REPS=(1 1 1)

for ri in "${REPS[@]}"
  do
  #bash run_single.sh iozone.sh
  #bash run_single.sh interbench.sh
  #bash run_single.sh memtier.sh
  bash run_single.sh sysbench.sh
  bash run_single.sh hayden.sh
  bash run_single.sh lxml.sh
  bash run_single.sh cpp_bench.sh
  bash run_single.sh pbmc.sh
  bash run_single.sh datasci_bench.sh
  bash run_single.sh sentences.sh
  bash run_single.sh matrix.sh
  bash run_single.sh ansibench.sh
  bash run_single.sh learned_sort.sh
  bash run_single.sh percolation.sh
  bash run_single.sh radix.sh
  bash run_single.sh redis.sh
  bash run_single.sh rambench.sh
done

bash run_single.sh bonnie.sh

## TODO:
#db_bench.sh
## need to comment out the failing flag
#saxpy.sh

#shortestpath.sh
## nss??
#crypto_bench.sh
#ior.sh
## too much resources
#sosd.sh
