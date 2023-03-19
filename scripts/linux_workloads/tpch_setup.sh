source ~/.bashrc
git clone https://github.com/gregrahn/tpch-kit.git
cd tpch-kit/dbgen
make

createdb tpch
psql tpch -f dss.ddl
./dbgen -vf -s 10

for i in `ls *.tbl`; do
  table=${i/.tbl/}
  echo "Loading $table..."
  sed 's/|$//' $i > /tmp/$i
  psql tpch -q -c "TRUNCATE $table"
  psql tpch -c "\\copy $table FROM '/tmp/$i' CSV DELIMITER '|'"
done

mkdir -p /tmp/queries
for i in `ls queries/*.sql`; do
  tac "$i" | sed '2s/;//' | tac > /tmp/"$i"
done

DSS_QUERY=/tmp/queries ./qgen | sed 's/limit -1//' | sed 's/day (3)/day/' > queries.sql

cd ~/postgres_setup_scripts
psql -d tpch < tpch_indexes.sql
#psql tpch < queries.sql


