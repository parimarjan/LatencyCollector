#!/bin/sh

createdb ergastf1
wget -O ergastf1.tar https://www.dropbox.com/s/gr5lpmcdhsbe3tb/ergastf1.tar?dl=1
pg_restore -v -d ergastf1 ergastf1.tar
