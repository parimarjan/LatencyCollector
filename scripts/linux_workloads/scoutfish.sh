
git clone https://github.com/mcostalba/scoutfish.git
cd scoutfish/src

wget https://database.lichess.org/standard/lichess_db_standard_rated_2023-02.pgn.zst
unzstd lichess_db_standard_rated_2023-02.pgn.zst

make build ARCH=x86-64 COMP=g++

./scoutfish make lichess_db_standard_rated_2023-02.pgn
./scoutfish scout lichess_db_standard_rated_2023-02.scout {"sub-fen": "8/8/p7/8/8/1B3N2/8/8"}

cd ../..
rm -rf scoutfish
