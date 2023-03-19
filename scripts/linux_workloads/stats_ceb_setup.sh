#!/bin/sh

#createdb ergastf1
#wget -O ergastf1.tar https://www.dropbox.com/s/gr5lpmcdhsbe3tb/ergastf1.tar?dl=1
#pg_restore -v -d ergastf1 ergastf1.tar

createdb stats
cd ~/
git clone https://github.com/Nathaniel-Han/End-to-End-CardEst-Benchmark.git
cd End-to-End-CardEst-Benchmark/
psql -d stats < datasets/stats_simplified/stats.sql
psql -d stats < scripts/sql/stats_load.sql
psql -d stats < scripts/sql/stats_index.sql
cd -
