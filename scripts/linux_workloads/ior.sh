#git clone --recurse-submodules https://github.com/hpc-io/h5bench
#cd h5bench/
#git submodule update --init
#mkdir build
#cd build/
#cmake ..
#make && make install
#sudo apt-get install libhdf5-10
#sudo apt-get install libhdf5-serial-dev
#sudo apt-get install libhdf5-dev
#sudo apt-get install libhdf5-cpp-11
#sudo apt-get install libhdf5-serial-dev
#sudo apt-get install libhdf5-dev
#sudo apt-get install libhdf5-cpp-11
#export CPATH="/usr/include/hdf5/serial/"

git clone https://github.com/hpc/ior.git
cd ior/
./bootstrap
sudo apt-get install --assume-yes autoconf

sudo apt-get install --assume-yes build-essential libssl-dev libz-dev libsqlite3-dev libcurl4-gnutls-dev libdaemon-dev automake autoconf pkg-config libtool libcppunit-dev libnl-3-dev libnl-cli-3-dev libnl-genl-3-dev libnl-nf-3-dev libnl-route-3-dev libarchive-dev libarchive-dev
vim install.sh
bash install.sh

./bootstrap
./configure
make
sudo make install
make check
./testing/complex-tests.sh
./testing/s3.sh

## others???
