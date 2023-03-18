git clone https://github.com/redis/redis.git
cd redis/
make
make test
cd src/
./redis-server &
./redis-benchmark
# TODO: add more benchmark versions

