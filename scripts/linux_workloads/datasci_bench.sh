## needs numpy,pandas

git clone https://github.com/parimarjan/data_sci_bench.git
cd data_sci_bench

python3 nbody.py -n 100 -t 100
python3 nbody.py -n 100 -t 1000
python3 nbody.py -n 1000 -t 1000

python3 haversine.py -s 100
python3 haversine.py -s 1000
python3 haversine.py -s 10000

python3 blackscholes.py -n 100000
python3 blackscholes.py -n 1000000
python3 blackscholes.py -n 10000000
