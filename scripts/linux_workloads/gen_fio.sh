#!/bin/bash

ENGINES=(libpmem libaio io_uring falloc posixaio sync psync vsync pvsync pvsync2 mmap)
SIZES=(512mb 1024mb 2048mb 4096mb 8192mb)
RWS=(read write trim randread randwrite randtrim rw readwrite randrw trimwrite)

for size in "${SIZES[@]}"
do
  for rw in "${RWS[@]}"
  do
    engine=${ENGINES[$RANDOM % ${#ENGINES[@]}]}
    cmd="sudo fio --filename=./test --rw=$rw --ioengine=$engine --numjobs=1 --group_reporting --name=$rw --size=$size"
    #eval "$cmd"
    echo "$cmd"
    echo "rm ./test"

    engine=${ENGINES[$RANDOM % ${#ENGINES[@]}]}
    cmd="sudo fio --filename=./test --rw=$rw --ioengine=$engine --numjobs=1 --group_reporting --name=$rw --size=$size"
    #eval "$cmd"
    echo "$cmd"
    echo "rm ./test"

    engine=${ENGINES[$RANDOM % ${#ENGINES[@]}]}
    cmd="sudo fio --filename=./test --rw=$rw --ioengine=$engine --numjobs=1 --group_reporting --name=$rw --size=$size"
    #eval "$cmd"
    echo "$cmd"
    echo "rm ./test"

    engine=${ENGINES[$RANDOM % ${#ENGINES[@]}]}
    cmd="sudo fio --filename=./test --rw=$rw --ioengine=$engine --numjobs=1 --group_reporting --name=$rw --size=$size"
    #eval "$cmd"
    echo "$cmd"
    echo "rm ./test"

    engine="mmap"
    cmd="sudo fio --filename=./test --rw=$rw --ioengine=$engine --numjobs=1 --group_reporting --name=$rw --size=$size"
    #eval "$cmd"
    echo "$cmd"
    echo "rm ./test"

    engine="libaio"
    cmd="sudo fio --filename=./test --rw=$rw --ioengine=$engine --numjobs=1 --group_reporting --name=$rw --size=$size"
    #eval "$cmd"
    echo "$cmd"
    echo "rm ./test"
  done
done
