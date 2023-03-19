   50  sudo apt-get install build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev libssl-dev
   51  git clone https://github.com/RedisLabs/memtier_benchmark.git
   52  cd memtier_benchmark/
   53  ls
   54  clear
   55  ls
   56  pwd
   57  autoreconf -ivf
   58  ./configure
   59  make
   60  sudo make install
   61  mkdir -p .env
   62  virtualenv .env
   63  sudo apt install python3-virtualenv
   64  virtualenv .env
   65  source .env/bin/activate
   66  pip install -r tests/test_requirements.txt
   67  ./tests/run_tests.sh
   68  ./redis-server
   69  redis-server
   70  sudo apt install redis-server
   71  ./tests/run_tests.sh
   72  memtier_benchmark --help
   73  memtier_benchmark
   74  memtier_benchmark --help
   75  memtier_benchmark -n allkeys
   76  history
