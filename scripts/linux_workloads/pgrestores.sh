./pg_setup.sh
echo "postgres setup done"
sleep 1
source ~/.bashrc_exports

createdb test
sleep 3
psql -d test < gen1.sql
sleep 3

#./pg_hint_setup.sh

sleep 3
./imdb_setup.sh
dropdb imdb
bash ergast_setup.sh
dropdb ergastf1
bash stats_ceb_setup.sh

bash tpch_setup.sh
dropdb tpch

#bash stack_setup.sh
#bash tpch_setup2.sh
bash zdbs_setup.sh

bash tpcds_setup.sh
dropdb tpcds
