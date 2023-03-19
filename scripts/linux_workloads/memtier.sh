sudo apt-get install build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev libssl-dev
git clone https://github.com/RedisLabs/memtier_benchmark.git
cd memtier_benchmark/
autoreconf -ivf
./configure
make
sudo make install
mkdir -p .env
virtualenv .env
sudo apt install python3-virtualenv
virtualenv .env
source .env/bin/activate
pip install -r tests/test_requirements.txt
./tests/run_tests.sh
sudo apt install redis-server
redis-server &
./tests/run_tests.sh
memtier_benchmark -R -n 1000 --data-size-range=10-1000 -t 1 -x 2
memtier_benchmark -R -n 10000 --data-size-range=10-1000 -t 1 -x 2
memtier_benchmark -R -n 1000000 --data-size-range=10-1000 -t 1 -x 2
memtier_benchmark -R -n 10000000 --data-size-range=10-1000 -t 1 -x 2

#memtier_benchmark -n allkeys
