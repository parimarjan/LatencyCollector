createdb imdb
wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv pg_imdb.tar -C ./
rm pg_imdb.tar
pg_restore -v -d imdb ./pg_imdb
