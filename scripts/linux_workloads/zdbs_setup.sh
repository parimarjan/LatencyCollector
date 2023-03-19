source ~/.bashrc

wget -O zdbs.tar.gz https://www.dropbox.com/s/pb413g1523882t7/zdbs.tar.gz?dl=1
tar -xvf zdbs.tar.gz

cd zdbs

createdb accidents
pg_restore -v -d accidents ./accidents.tar

createdb financial
pg_restore -v -d financial ./financial.tar

createdb consumerexpenditure
pg_restore -v -d consumerexpenditure ./consumerexpenditure.tar

createdb seznam
pg_restore -v -d seznam ./seznam.tar

createdb ccs
pg_restore -v -d ccs ./ccs.tar

createdb visualgenome
pg_restore -v -d visualgenome ./visualgenome.tar

createdb airline
pg_restore -v -d airline ./airline.tar

createdb ssb
pg_restore -v -d ssb ./ssb.tar

createdb credit
pg_restore -v -d credit ./credit.tar

createdb basketball_men
pg_restore -v -d basketball_men ./basketball.tar






