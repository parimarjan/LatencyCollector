
git clone --recursive https://github.com/parimarjan/trainingdata-tool.git
cd trainingdata-tool/
mkdir -p build
git submodule sync --recursive
git submodule update --recursive --init
cmake -H. -Bbuild
cmake --build build

git clone https://github.com/MichaelB7/pgn-extract.git
cd pgn-extract/src
make
cd ../..

wget https://theweekinchess.com/zips/twic1474g.zip
unzip twic1474g.zip
rm twic1474g.zip
cat twic1474.pgn | ./pgn-extract/src/pgn-extract -7 -C -N --dropply 40 > test.pgn
./build/trainingdata-tool twic1474.pgn

#rm twic1474.pgn
#rm test.pgn

#wget https://theweekinchess.com/zips/twic1000g.zip
#unzip twic1000g.zip
#rm twic1000g.zip
#./build/trainingdata-tool twic1000.pgn
#rm twic1000.pgn

wget https://database.lichess.org/standard/lichess_db_standard_rated_2013-02.pgn.zst
unzstd lichess_db_standard_rated_2013-02.pgn.zst
rm lichess_db_standard_rated_2013-02.pgn.zst
cat lichess_db_standard_rated_2013-02.pgn | ./pgn-extract/src/pgn-extract -7 -C -N --dropply 40 > test.pgn
./build/trainingdata-tool test.pgn
rm lichess_db_standard_rated_2013-02.pgn
rm test.pgn

#wget https://database.lichess.org/standard/lichess_db_standard_rated_2014-02.pgn.zst
#unzstd lichess_db_standard_rated_2014-02.pgn.zst
#rm lichess_db_standard_rated_2014-02.pgn.zst
#cat lichess_db_standard_rated_2014-02.pgn | ./pgn-extract/src/pgn-extract -7 -C -N --dropply 40 > test.pgn
#./build/trainingdata-tool test.pgn
#rm lichess_db_standard_rated_2014-02.pgn
#rm test.pgn

wget https://database.lichess.org/standard/lichess_db_standard_rated_2015-02.pgn.zst
unzstd lichess_db_standard_rated_2015-02.pgn.zst
rm lichess_db_standard_rated_2015-06.pgn.zst
cat lichess_db_standard_rated_2015-02.pgn | ./pgn-extract/src/pgn-extract -7 -C -N --dropply 40 > test.pgn
./build/trainingdata-tool lichess_db_standard_rated_2015-02.pgn
rm lichess_db_standard_rated_2015-02.pgn
rm test.pgn

##wget https://database.lichess.org/standard/lichess_db_standard_rated_2016-02.pgn.zst
##unzstd lichess_db_standard_rated_2016-02.pgn.zst
##rm lichess_db_standard_rated_2016-02.pgn.zst
##cat lichess_db_standard_rated_2016-02.pgn | ./pgn-extract/src/pgn-extract -7 -C -N --dropply 40 &> /dev/null
##./build/trainingdata-tool lichess_db_standard_rated_2016-02.pgn
##rm lichess_db_standard_rated_2016-02.pgn

#while read in;
  #do
    #if [ -z "$in" ]; then
      #continue
    #fi
  #wget https://database.lichess.org/standard/lichess_db_standard_rated_2013-02.pgn.zst
  #unzstd lichess_db_standard_rated_2013-02.pgn.zst
  #rm lichess_db_standard_rated_2013-02.pgn.zst
  #cat lichess_db_standard_rated_2013-02.pgn | ./pgn-extract/src/pgn-extract -7 -C -N --dropply 40 &> /dev/null
  #./build/trainingdata-tool lichess_db_standard_rated_2013-02.pgn
  #rm lichess_db_standard_rated_2013-02.pgn
#done < pgnlinks.txt

#cd ..
#rm -rf trainingdata-tool

