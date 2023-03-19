git clone https://github.com/parimarjan/RadixSpline.git
cd RadixSpline
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make
./example
./tester
cp generate ../scripts/
#cp generate ../
cd ..
./scripts/download.sh

cd scripts
./prepare.sh

#git clone https://github.com/learnedsystems/SOSD.git
#cd SOSD
#./scripts/download.sh


## TODO: run benchmark

