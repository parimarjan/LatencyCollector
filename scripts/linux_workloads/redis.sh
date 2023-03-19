git clone https://github.com/redis/redis.git
cd redis/
make
make test
cd src/
#./redis-server --port 7778 &
./redis-benchmark 

