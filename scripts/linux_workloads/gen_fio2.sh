#!/bin/bash

ENGINES=(libpmem dev-dax pmemblk rbd rados rdma libaio io_uring sg mtd gfapi_async gfapi splice e4defrag falloc posixaio exec filedelete filestat filecreate ftruncate net netsplice null sync psync vsync pvsync pvsync2 mmap cpuio)
SIZES=(256mb 512mb 1024mb 2048mb 4096mb 8192mb)
RWS=(read write trim randread randwrite randtrim rw readwrite randrw trimwrite)

for size in "${SIZES[@]}"
do
  for rw in "${RWS[@]}"
  do
    engine=${ENGINES[$RANDOM % ${#ENGINES[@]}]}
    echo "$engine,$size,$rw"
  done
done
