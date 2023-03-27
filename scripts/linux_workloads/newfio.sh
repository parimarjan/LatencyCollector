sudo fio --filename=./test --rw=read --ioengine=io_uring --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=psync --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=psync --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=vsync --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=psync --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libpmem --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=sync --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=vsync --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=falloc --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=io_uring --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libpmem --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=io_uring --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=falloc --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=vsync --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=falloc --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libpmem --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=pvsync --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=vsync --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=sync --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=psync --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=sync --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=falloc --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=vsync --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=falloc --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=512mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=pvsync --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=posixaio --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libpmem --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=falloc --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=sync --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=posixaio --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=vsync --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=posixaio --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=psync --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libpmem --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=posixaio --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=vsync --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=vsync --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=vsync --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=psync --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=posixaio --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=vsync --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=vsync --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=posixaio --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=falloc --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=1024mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=psync --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=psync --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=sync --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=posixaio --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libpmem --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=sync --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=falloc --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=falloc --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=posixaio --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=pvsync --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=io_uring --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=posixaio --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=psync --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=sync --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=falloc --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=falloc --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=psync --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=vsync --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=pvsync2 --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=sync --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=posixaio --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=psync --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=2048mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=falloc --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libpmem --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=pvsync --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=sync --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libpmem --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=posixaio --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=psync --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=sync --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=posixaio --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=falloc --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=falloc --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=vsync --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=vsync --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libpmem --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=io_uring --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=posixaio --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=sync --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=vsync --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=io_uring --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=posixaio --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=pvsync --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libpmem --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=psync --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=pvsync2 --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=sync --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=4096mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=vsync --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libpmem --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=vsync --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=mmap --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=read --ioengine=libaio --numjobs=1 --group_reporting --name=read --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=falloc --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=vsync --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=posixaio --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=io_uring --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=mmap --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=write --ioengine=libaio --numjobs=1 --group_reporting --name=write --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=io_uring --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=pvsync --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=falloc --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=mmap --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trim --ioengine=libaio --numjobs=1 --group_reporting --name=trim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libpmem --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=psync --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=pvsync2 --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=mmap --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randread --ioengine=libaio --numjobs=1 --group_reporting --name=randread --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=mmap --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randwrite --ioengine=libaio --numjobs=1 --group_reporting --name=randwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=sync --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libpmem --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=psync --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=pvsync --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=mmap --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randtrim --ioengine=libaio --numjobs=1 --group_reporting --name=randtrim --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libpmem --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=pvsync2 --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=mmap --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=rw --ioengine=libaio --numjobs=1 --group_reporting --name=rw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=pvsync --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=sync --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=io_uring --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=mmap --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=readwrite --ioengine=libaio --numjobs=1 --group_reporting --name=readwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=posixaio --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=falloc --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=mmap --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=randrw --ioengine=libaio --numjobs=1 --group_reporting --name=randrw --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=falloc --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=psync --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libpmem --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=mmap --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
sudo fio --filename=./test --rw=trimwrite --ioengine=libaio --numjobs=1 --group_reporting --name=trimwrite --size=8192mb
rm ./test
