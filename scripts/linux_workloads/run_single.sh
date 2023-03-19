
FN=$1
#me=`basename "$0"`
echo $FN
mkdir -p ~/log
mkdir -p ~/log/results
mkdir -p ~/log/results/perf
OUTDIR=~/log/results/perf/
rid=$RANDOM

E=dTLB-loads,iTLB-loads,branch-loads,instructions,cache-references,cpu-clock,task-clock,page-faults,minor-faults,major-faults,cs,cpu-migrations,alignment-faults,emulation-faults,branch-load-misses,branch-loads,bus-cycles,idle-cycles-backend,alignment-faults

while read in;
  do
    if [ -z "$in" ]; then
      continue
    fi
    if [[ $in =~ "git" ]]; then
      plogs="/dev/null"
      plogs_err="/dev/null"
    elif [[ $in =~ "cd" ]]; then
      eval $in
      continue
    elif [[ $in =~ "&" ]]; then
      eval $in
      continue
    elif [[ $in =~ "#" ]]; then
      continue
    else
      cmdname=${FN}${rid}"-"${in//" "/"_"}
      cmdname=${cmdname//\//"slash"}
      plogs=${OUTDIR}${cmdname}'.csv'
      plogs_err=${plots}.stderr
    fi
    echo "cmd name: " $cmdname
    echo "outdir: " $OUTDIR
    cmd="perf stat -x, -e ${E} -o $plogs $in"
    echo "Going to evaluate: " $cmd
    eval $cmd
done < $FN
