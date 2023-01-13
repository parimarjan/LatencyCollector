N=10

QDIR="./queries/ceb/"
OUTDIR="./queries/ceb-small/"
mkdir -p $OUTDIR

TEMPLATES=(1a 2a 2b 2c 3a 4a 5a 6a 7a 8a 9a 9b 10a 10b 11a 11b)

for i in "${TEMPLATES[@]}";
  do
  echo $QDIR$i;
  shuf -zn$N -e $QDIR$i/*.sql | xargs -0 cp -vt $OUTDIR
done
