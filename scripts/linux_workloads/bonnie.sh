#sudo apt -y install bonnie++
bonnie++ -d /tmp -s 32G -n 0 -m TEST -f -b
rm -rf /tmp/*
