#!/usr/bin/env bash

## installs postgres, and sets up environment variables appropriately

echo "export PG_DATA_DIR=/home/ubuntu/pg_data_dir" >> ~/.bashrc_exports
echo "export PGPORT=5432" >> ~/.bashrc_exports
echo "export PG_BUILD_DIR=/home/ubuntu/build" >> ~/.bashrc_exports
source ~/.bashrc_exports
# also, set these for the current run

# clone postgres, and checkout appropriate branch
cd ~/
git clone https://github.com/postgres/postgres.git
cd postgres
git checkout REL_12_STABLE

sudo apt-get --assume-yes install libreadline-dev zlib1g-dev flex \
  zlib-devel openssl-devel wget
sudo apt-get --assume-yes install build-essential libreadline-dev zlib1g-dev \
flex bison libxml2-dev libxslt-dev libssl-dev

./configure --enable-cassert --enable-debug --prefix $PG_BUILD_DIR CFLAGS="-ggdb -Og -g3 -fno-omit-frame-pointer"

# now we can compile postgres (just need to do this first time we're linking
# with aqo)
cd ~/postgres
make -j 4 -s
make install -j 4 -s

#echo "export PG_BUILD_DIR=/pgfs/build" >> ~/.bashrc_exports
echo "alias startpg=\"$PG_BUILD_DIR/bin/postgres -D $PG_DATA_DIR -p $PGPORT\"" >> ~/.bashrc_exports
echo "export PATH=$PG_BUILD_DIR/bin:$PATH" >> ~/.bashrc_exports
export PATH=$PG_BUILD_DIR/bin:$PATH
$PG_BUILD_DIR/bin/initdb -D $PG_DATA_DIR

cp ~/postgres_setup_scripts/postgresql.conf $PG_DATA_DIR/

mkdir -p ~/payload/results
cp ~/postgres_setup_scripts/postgresql.conf ~/payload/results/

source ~/.bashrc_exports

pg_ctl -D $PG_DATA_DIR -l logfile start
echo "started postgres"
