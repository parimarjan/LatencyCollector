git clone https://github.com/nfinit/ansibench.git
cd ansibench
## TODO: run each benchmark individually after make

cd hint
make run
cd ..

cd mk
make run
cd ..

## too slow, and only cpu workload
#cd tripforce
#make run
#cd ..

cd whetstone
make run
cd ..

cd dhrystone
make run
cd ..

cd linpack
make run
cd ..

cd nbench
make run
cd ..

cd stream
make run
cd ..

cd coremark
make run
cd ..


