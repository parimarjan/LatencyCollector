
git clone --recursive https://github.com/parimarjan/trainingdata-tool.git
cd trainingdata-tool/
mkdir -p build
git submodule sync --recursive
git submodule update --recursive --init
cmake -H. -Bbuild
cmake --build build

wget https://database.lichess.org/standard/lichess_db_standard_rated_2023-02.pgn.zst
unzstd lichess_db_standard_rated_2023-02.pgn.zst

git clone https://github.com/MichaelB7/pgn-extract.git
cd pgn-extract/src
make
mv pgn-extract ../..
cd ../..

pgn-extract -7 -C -N --dropply 16 > test.pgn

./build/trainingdata-tool lichess_db_standard_rated_2023-02.pgn


cd ..
rm -rf trainingdata-tool
