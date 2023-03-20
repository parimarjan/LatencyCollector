mkdir -p fio
cd fio

sudo fio --filename=./test --rw=read --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=read --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=read --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=read --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=read --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=read --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=write --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=write --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=write --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=write --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=write --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=write --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=trime --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=trime --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=trime --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=trime --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=trime --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=trime --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=randread --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randread --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=randread --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randread --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=randread --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randread --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=randwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=randwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=randwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=randtrim --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=randtrim --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=randtrim --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=rw --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=rw --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=rw --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=rw --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=rw --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=rw --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=readwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=readwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=readwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=randrw --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=randrw --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=randrw --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --iodepth=16 --size=8gb
sudo fio --filename=./test --rw=trimwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --iodepth=16 --size=100mb
sudo fio --filename=./test --rw=trimwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --iodepth=16 --size=4gb
sudo fio --filename=./test --rw=trimwrite --direct=1 --bs=1M --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --iodepth=16 --size=8gb

cd ..
rm -rf fio

