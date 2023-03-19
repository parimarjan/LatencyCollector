source ~/.bashrc
git clone https://github.com/parimarjan/tpcds-kit.git
cd tpcds-kit/tools
make

createdb tpcds
psql -d tpcds -f tpcds.sql

./dsdgen -FORCE -VERBOSE -SCALE 10

for i in `ls *.dat`; do
  table=${i/.dat/}
  echo "Loading $table..."
  sed 's/|$//' $i > /tmp/$i
  psql tpcds -q -c "TRUNCATE $table"
  psql tpcds -c "\\copy $table FROM '/tmp/$i' CSV DELIMITER '|'"
done

#cd ~/postgres_setup_scripts
#psql -d tpch < tpch_indexes.sql


