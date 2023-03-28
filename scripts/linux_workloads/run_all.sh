source ~/.bashrc

REPS=(1 1 1)
#bash imdb_setup.sh
for ri in "${REPS[@]}"
  do
  bash run_single.sh job_sqls.sh
  bash run_single.sh ceb_sqls.sh
  #bash run_single.sh newfio.sh
  #bash run_single.sh fio.sh
  #bash run_single.sh iozone.sh
  #bash run_single.sh interbench.sh
  #bash run_single.sh pgrestores.sh
  #bash run_single.sh ffmpeg.sh
  #bash run_single.sh memtier.sh
  #bash run_single.sh cgrep.sh
  #bash run_single.sh tinymem.sh
  #bash run_single.sh chess_trainingdata.sh
  #bash run_single.sh ripgrep.sh
  #bash run_single.sh scoutfish.sh
  #bash run_single.sh sysbench.sh
  #bash run_single.sh hayden.sh
  #bash run_single.sh lxml.sh
  #bash run_single.sh cpp_bench.sh
  #bash run_single.sh pbmc.sh
  #bash run_single.sh datasci_bench.sh
  #bash run_single.sh sentences.sh
  #bash run_single.sh matrix.sh
  #bash run_single.sh ansibench.sh
  #bash run_single.sh learned_sort.sh
  #bash run_single.sh percolation.sh
  #bash run_single.sh radix.sh
  #bash run_single.sh redis.sh
  #bash run_single.sh rambench.sh
  #bash run_single.sh pybench.sh
  #bash run_single.sh bonnie.sh
done


#bash run_single.sh bwbench.sh

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
