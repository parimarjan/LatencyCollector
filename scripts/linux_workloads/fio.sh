mkdir -p fio
cd cio

#fio --cmdhelp=rw
                  #rw: IO direction
               #alias: readwrite
                #type: string (opt=bla)
             #default: read
        #valid values: read       Sequential read
                    #: write      Sequential write
                    #: trim       Sequential trim
                    #: randread   Random read
                    #: randwrite  Random write
                    #: randtrim   Random trim
                    #: rw         Sequential read and write mix
                    #: readwrite  Sequential read and write mix
                    #: randrw     Random read and write mix
                    #: trimwrite  Trim and write mix, trims preceding writes

SIZE1=100mb
SIZE2=4gb
SIZE3=8gb
KINDS=(read write trime randread randwrite randtrim rw readwrite randrw trimwrite)

for kind in "${KINDS[@]}"
  do
  CMD1="sudo fio --filename=./test --rw=$kind --direct=1 --bs=1M \
  --ioengine=libaio --numjobs=1 --group_reporting --name=$kind \
  --iodepth=16 --size=$SIZE1"
  echo $CMD1
  eval $CMD1

  CMD2="sudo fio --filename=./test --rw=$kind --direct=1 --bs=1M \
  --ioengine=libaio --numjobs=1 --group_reporting --name=$kind \
  --iodepth=16 --size=$SIZE2"
  echo $CMD2
  eval $CMD2

  CMD3="sudo fio --filename=./test --rw=$kind --direct=1 --bs=1M \
  --ioengine=libaio --numjobs=1 --group_reporting --name=$kind \
  --iodepth=16 --size=$SIZE3"
  echo $CMD3
  eval $CMD3
done


cd ..
rm -rf fio
