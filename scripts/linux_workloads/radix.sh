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

# data will be in ../data
cd ../build

## run more bench versions
./bench ../data/osm_cellids_600M_uint64 ../SOSD/osm_cellids_600M_uint64_equality_lookups_1M
#./bench ../data/osm_cellids_600M_uint64 ../SOSD/osm_cellids_600M_uint64_equality_lookups_10M
./bench ../data/osm_cellids_200M_uint64 ../SOSD/osm_cellids_200M_uint64_equality_lookups_1M

cd ../..
rm -rf RadixSpline

