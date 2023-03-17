git clone --recursive https://github.com/mumble-voip/crypto-benchmark.git
cmake ./ -Dwolfcrypt=OFF -Dsodium=OFF -Dhydrogen=ON
make
./crypto_benchmark

