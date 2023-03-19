#sudo apt -y install bonnie++
mkdir -p bonnie
bonnie++ -d ./bonnie -s 32G -n 0 -m TEST -f -b
rm -rf bonnie
