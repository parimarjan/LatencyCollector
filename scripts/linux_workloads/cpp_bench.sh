git clone --recursive https://github.com/ssciwr/cpp-benchmarking.git
cd cpp-benchmarking/
mkdir build
cd build/
# TODO: install cmake; also profile cmake command
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

cd bench
./bench1
./bench2
./bench3
./bench4
./bench5
./bench6
./bench7
