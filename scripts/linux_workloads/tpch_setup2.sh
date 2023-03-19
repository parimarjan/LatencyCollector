createdb tpch
wget -O tpch.tar https://www.dropbox.com/s/bqwwoohdudxkn4v/tpch.tar?dl=1
tar xfv tpch.tar -C ./
pg_restore -v -d tpch ./tpch
