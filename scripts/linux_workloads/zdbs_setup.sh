source ~/.bashrc

wget -O zdbs.tar.gz https://www.dropbox.com/s/pb413g1523882t7/zdbs.tar.gz?dl=1
tar -xvf zdbs.tar.gz

cd zdbs

createdb accidents
pg_restore -v -d accidents ./accidents.tar
dropdb accidents

createdb financial
pg_restore -v -d financial ./financial.tar
dropdb financial

createdb consumerexpenditure
pg_restore -v -d consumerexpenditure ./consumerexpenditure.tar
dropdb consumerexpenditure

createdb seznam
pg_restore -v -d seznam ./seznam.tar
dropdb seznam

createdb ccs
pg_restore -v -d ccs ./ccs.tar
dropdb ccs

createdb visualgenome
pg_restore -v -d visualgenome ./visualgenome.tar
dropdb visualgenome

createdb airline
pg_restore -v -d airline ./airline.tar
dropdb airline

createdb ssb
pg_restore -v -d ssb ./ssb.tar
dropdb ssb

createdb credit
pg_restore -v -d credit ./credit.tar
dropdb credit

createdb basketball_men
pg_restore -v -d basketball_men ./basketball.tar
dropdb basketball_men

cd ..
rm -rf zdbs
