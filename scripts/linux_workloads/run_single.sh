
FN=$1
#me=`basename "$0"`
echo $FN
mkdir -p ~/log
mkdir -p ~/log/results
mkdir -p ~/log/results/perf
OUTDIR=~/log/results/perf/
rid=$RANDOM

E=dTLB-loads,iTLB-loads,instructions,cache-misses,cache-references,cpu-clock,task-clock,page-faults,minor-faults,major-faults,cs,cpu-migrations,alignment-faults,branch-load-misses,branch-loads,bus-cycles,idle-cycles-backend,L1-dcache-load-misses,L1-dcache-store-misses,L1-icache-load-misses,LLC-load-misses

while read in;
  do
    if [ -z "$in" ]; then
      continue
    fi

    if [[ $in =~ "#" ]]; then
      continue
    elif [[ $in =~ "&" ]]; then
      eval $in
      continue
    elif [[ $in =~ "git" ]]; then
      plogs="/dev/null"
      plogs_err="/dev/null"
      eval $in
      continue
    elif [[ $in =~ "cd" ]]; then
      eval $in
      continue
    elif [[ $in =~ "mkdir" ]]; then
      eval $in
      continue
    else
      #cmdname=${FN}${rid}"-"${in//" "/"_"}
      cmdname=${FN}${rid}"-"${in}
      #cmdname= ($(echo -n $cmdname | shasum | cut -f1 -d" "))
      cmdname=$(echo -n "$cmdname" | sha256sum | awk '{print $1}')
      plogs=${OUTDIR}${cmdname}'.csv'
      plogs_err=${plots}.stderr
      ts=`date +%s`
      echo "$cmdname,$in,$FN,$ts" >> ${OUTDIR}allcommands.csv
    fi
    echo "cmd name: " $cmdname
    echo "outdir: " $OUTDIR
    cmd="perf stat -x, -e ${E} -o $plogs $in"
    echo "Going to evaluate: " $cmd
    eval $cmd
done < $FN
