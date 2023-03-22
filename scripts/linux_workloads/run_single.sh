
FN=$1
#me=`basename "$0"`
echo $FN
mkdir -p ~/log
mkdir -p ~/log/results
mkdir -p ~/log/results/perf
OUTDIR=~/log/results/perf/
rid=$RANDOM

#E=dTLB-loads,iTLB-loads,instructions,cache-misses,cache-references,task-clock,page-faults,minor-faults,major-faults,cs,cpu-migrations,alignment-faults,branch-load-misses,branch-loads,bus-cycles,idle-cycles-backend,L1-dcache-load-misses,L1-dcache-store-misses,L1-icache-load-misses,LLC-load-misses

E=cycles,instructions,cache-misses,page-faults,branch-misses,context-switches,L1-dcache-load-misses

#block:block_rq_issue

while read in;
  do
    if [ -z "$in" ]; then
      continue
    fi
    echo "******************"
    echo "new line: " $in
    echo "******************"

    if [[ $in =~ "#" ]]; then
      continue

    elif [[ $in =~ "git" ]]; then
      plogs="/dev/null"
      plogs_err="/dev/null"
      eval $in
      continue
    elif [[ $in =~ "bashrc" ]]; then
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
    elif [[ $in =~ "rm" ]]; then
      eval $in
      continue
    elif [[ $in =~ "pip" ]]; then
      eval $in
      continue
    else
      cmdname=${FN}${rid}"-"${in}
      cmdname=$(echo -n "$cmdname" | sha256sum | awk '{print $1}')
      plogs=${OUTDIR}${cmdname}'.csv'
      plogs_err=${plots}.stderr
    fi
    echo "cmd name: " $cmdname
    echo "outdir: " $OUTDIR
    cmd="timeout 900s perf stat -x, -e ${E} -o $plogs $in"
    echo "Going to evaluate: " $cmd

    ts=`date +%s`
    eval $cmd
    status=$?
    endts=`date +%s`
    exectime="$((endts-ts))"
    echo "$cmdname,$in,$FN,$ts,$exectime,$status" >> ${OUTDIR}allcommands.csv
done < $FN
