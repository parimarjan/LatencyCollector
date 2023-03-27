sudo fio --filename=./test --rw=read --ioengine=rbd --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=sync --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=ftruncate --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=vsync --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=vsync --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=null --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=exec --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=gfapi_async --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=filecreate --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=netsplice --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=ftruncate --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=sg --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=rdma --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=rados --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=ftruncate --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=rbd --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=net --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pmemblk --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=exec --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=e4defrag --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=posixaio --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=pvsync2 --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=rados --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=io_uring --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=cpuio --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=splice --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=io_uring --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=splice --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=rbd --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=rbd --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=null --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=ftruncate --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=sg --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=ftruncate --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=rados --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=filecreate --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=netsplice --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=sg --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=splice --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=falloc --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=gfapi --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=rdma --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=vsync --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=sync --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=null --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=rbd --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=netsplice --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=ftruncate --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=sg --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=cpuio --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=falloc --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=e4defrag --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=rbd --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mtd --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=netsplice --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=filedelete --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=null --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=filestat --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=filecreate --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=e4defrag --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=filedelete --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=exec --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=rdma --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=rbd --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=pvsync --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=psync --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=null --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=posixaio --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=e4defrag --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=exec --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=net --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=sg --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=rbd --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=net --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=filestat --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libpmem --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=rdma --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libpmem --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=filedelete --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=cpuio --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=dev-dax --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=vsync --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=filecreate --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=cpuio --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=rados --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mtd --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=vsync --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=sg --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=gfapi --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=gfapi_async --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=rados --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=filestat --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=filecreate --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=null --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=posixaio --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mtd --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=e4defrag --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=exec --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=falloc --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=sync --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=pvsync --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=null --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=filedelete --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=vsync --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=e4defrag --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=cpuio --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mtd --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=dev-dax --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mtd --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libpmem --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=net --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=exec --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=ftruncate --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=posixaio --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=e4defrag --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=vsync --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=filecreate --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=rados --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=sync --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=ftruncate --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=pmemblk --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=filedelete --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=null --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=filedelete --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=cpuio --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=splice --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=filestat --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=gfapi --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=dev-dax --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=splice --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=splice --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=rbd --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=dev-dax --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=sync --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pmemblk --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=psync --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=psync --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=rbd --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=net --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=rados --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=sg --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=exec --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=filecreate --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=net --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=gfapi --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pvsync --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=splice --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pvsync --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=filecreate --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=io_uring --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=filestat --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=pmemblk --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=psync --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=gfapi_async --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=falloc --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=dev-dax --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pmemblk --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=psync --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=filedelete --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=filedelete --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=filedelete --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
