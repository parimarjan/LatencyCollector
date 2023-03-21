git clone https://github.com/parimarjan/grep-bench.git
cd grep-bench
make
make data
./bin/cgrep needle data/haystack
./bin/cppgrep needle data/haystack
