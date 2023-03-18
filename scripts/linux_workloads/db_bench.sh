### TODO: try on a big machine
git clone https://github.com/db-benchmarks/db-benchmarks.git
cd db-benchmarks/
sudo apt install docker
sudo apt install docker-compose
sudo apt install lm-sensors
sudo apt install dstat
#vim .env
cd tests/hn_small/
sudo ./init
../../test --test=hn_small --engines=elasticsearch,clickhouse --memory=2048
