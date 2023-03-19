git clone https://github.com/parimarjan/RadixSpline.git
cd RadixSpline
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make
./example
./tester

## TODO: run benchmark

