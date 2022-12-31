#!/usr/bin/env bash
PG_DATA_DIR=$1
echo "drop cache!"
rm -f logfile
pg_ctl -D $PG_DATA_DIR -m i stop -l logfile
pg_ctl -D $PG_DATA_DIR -m i start -l logfile
#sudo bash -c "echo 1 > /proc/sys/vm/drop_caches"
echo "drop cache done!"
#sudo systemctl restart postgresql
