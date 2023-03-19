createdb imdb
wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv pg_imdb.tar -C ./
pg_restore -v -d imdb ./pg_imdb
