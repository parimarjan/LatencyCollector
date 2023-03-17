
## TODO: put these in bootstrap code
#sudo apt -y install zstd python3-pip m4 cmake clang libboost-all-dev
#pip3 install --user numpy scipy
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#source $HOME/.cargo/env
git clone https://github.com/learnedsystems/SOSD.git
cd SOSD

./scripts/download.sh
./scripts/build_rmis.sh
./scripts/prepare.sh
./scripts/execute.sh
