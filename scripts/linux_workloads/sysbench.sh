# install
curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | sudo bash
sudo apt -y install sysbench
mkdir -p sysbench
cd sysbench
SIZE=16GB
sysbench --test=fileio --file-total-size=$SIZE prepare
sysbench --test=fileio --file-total-size=$SIZE --file-test-mode=rndrw --num-threads=1 run
sysbench --test=fileio --file-total-size=$SIZE cleanup

sysbench --test=cpu --cpu-max-prime=20000 --num-threads=1 run
sysbench --test=threads --thread-locks=1 run

sysbench --test=mutex --num-threads=2 run
sysbench --test=memory --num-threads=1 run

cd ..
rm -rf sysbench
