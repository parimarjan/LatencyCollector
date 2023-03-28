git clone https://github.com/RRZE-HPC/TheBandwidthBenchmark.git
cd TheBandwidthBenchmark
make TAG=GCC
./bwbench-GCC

## TODO: install likwid-pin
#for nt in 1 2 4 6 8 10; do likwid-pin -q -C E:M0:$nt:1:2 ./bwbench-GCC > dat/emmy-$nt.txt; done
