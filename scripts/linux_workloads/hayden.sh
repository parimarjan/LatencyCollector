## copied from https://github.com/haydenjames/bench-scripts
wget -qO- bench.sh | bash
(curl -s wget.racing/nench.sh | bash; curl -s wget.racing/nench.sh | bash) 2>&1 | tee nench.log
bash <(wget --no-check-certificate -O - https://raw.github.com/mgutz/vpsbench/master/vpsbench)

## TODO: fix
#wget http://busylog.net/FILES2DW/busytest.sh -O - -o /dev/null | bash

sudo wget https://raw.githubusercontent.com/STH-Dev/linux-bench/master/linux-bench.sh && chmod +x linux-bench.sh && ./linux-bench.sh

## TODO: fix
#wget https://raw.githubusercontent.com/hidden-refuge/bench-sh-2/master/bench.sh && chmod +x bench.sh && ./bench.sh

wget --no-check-certificate https://github.com/teddysun/across/raw/master/unixbench.sh
sudo chmod +x unixbench.sh
sudo ./unixbench.sh


