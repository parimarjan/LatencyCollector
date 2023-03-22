ENGINES=(libpmem dev-dax pmemblk rbd rados rdma libaio io_uring sg mtd gfapi_async gfapi
splice e4defrag falloc posixaio exec filedelete filestat filecreate ftruncate
net netsplice null sync psync vsync pvsync pvsync2 mmap cpuio)
SIZES=(100mb 4gb 8gb)
RWS=(read write trim randread randwrite randtrim rw readwrite randrw trimwrite)

#sudo fio --filename=./test --rw=read --direct=1 --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=100mb
