#!/bin/sh

createdb stack
wget -O so_pg12 https://www.dropbox.com/s/q66sw2k6fnugsse/so_pg12?dl=1
pg_restore -v -d stack so_pg12
