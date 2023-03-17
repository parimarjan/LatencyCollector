
git clone https://github.com/bennylp/saxpy-benchmark.git
cd saxpy-benchmark/src
make
./saxpy_cpu

## TODO: install python,pip etc. initially
pip3 install numpy

python3 saxpy_loop.py
python3 saxpy_numpy.py
