mkdir -p fio
cd fio

sudo fio --filename=./test --rw=read  --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=100mb
sudo fio --filename=./test --rw=read   --ioengine=libaio --numjobs=1 --group_reporting --name=read  --size=4gb
sudo fio --filename=./test --rw=read   --ioengine=libaio --numjobs=1 --group_reporting --name=read  --size=8gb
sudo fio --filename=./test --rw=write   --ioengine=libaio --numjobs=1 --group_reporting --name=write  --size=100mb
sudo fio --filename=./test --rw=write   --ioengine=libaio --numjobs=1 --group_reporting --name=write  --size=4gb
sudo fio --filename=./test --rw=write   --ioengine=libaio --numjobs=1 --group_reporting --name=write  --size=8gb
sudo fio --filename=./test --rw=trim   --ioengine=libaio --numjobs=1 --group_reporting --name=trim  --size=100mb
sudo fio --filename=./test --rw=trim   --ioengine=libaio --numjobs=1 --group_reporting --name=trim  --size=4gb
sudo fio --filename=./test --rw=trim   --ioengine=libaio --numjobs=1 --group_reporting --name=trim  --size=8gb
sudo fio --filename=./test --rw=randread   --ioengine=libaio --numjobs=1 --group_reporting --name=randread  --size=100mb
sudo fio --filename=./test --rw=randread   --ioengine=libaio --numjobs=1 --group_reporting --name=randread  --size=4gb
sudo fio --filename=./test --rw=randread   --ioengine=libaio --numjobs=1 --group_reporting --name=randread  --size=8gb
sudo fio --filename=./test --rw=randwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite  --size=100mb
sudo fio --filename=./test --rw=randwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite  --size=4gb
sudo fio --filename=./test --rw=randwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite  --size=8gb
sudo fio --filename=./test --rw=randtrim   --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim  --size=100mb
sudo fio --filename=./test --rw=randtrim   --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim  --size=4gb
sudo fio --filename=./test --rw=randtrim   --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim  --size=8gb
sudo fio --filename=./test --rw=rw   --ioengine=libaio --numjobs=1 --group_reporting --name=rw  --size=100mb
sudo fio --filename=./test --rw=rw   --ioengine=libaio --numjobs=1 --group_reporting --name=rw  --size=4gb
sudo fio --filename=./test --rw=rw   --ioengine=libaio --numjobs=1 --group_reporting --name=rw  --size=8gb
sudo fio --filename=./test --rw=readwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite  --size=100mb
sudo fio --filename=./test --rw=readwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite  --size=4gb
sudo fio --filename=./test --rw=readwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite  --size=8gb
sudo fio --filename=./test --rw=randrw   --ioengine=libaio --numjobs=1 --group_reporting --name=randrw  --size=100mb
sudo fio --filename=./test --rw=randrw   --ioengine=libaio --numjobs=1 --group_reporting --name=randrw  --size=4gb
sudo fio --filename=./test --rw=randrw   --ioengine=libaio --numjobs=1 --group_reporting --name=randrw  --size=8gb
sudo fio --filename=./test --rw=trimwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite  --size=100mb
sudo fio --filename=./test --rw=trimwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite  --size=4gb
sudo fio --filename=./test --rw=trimwrite   --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite  --size=8gb

cd ..
rm -rf fio

