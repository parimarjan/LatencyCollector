sudo apt -y install bc

git clone https://github.com/BurntSushi/ripgrep.git
cd ripgrep/benchsuite
# WARNING! This downloads several GB of data, and builds the Linux kernel.
# This took about 15 minutes on a high speed connection.
# Tip: try `--download subtitles-ru` to grab the smallest corpus, but you'll
# be limited to running benchmarks for only that corpus.
./benchsuite --dir ./data --download all
# List benchmarks available.
./benchsuite --dir ./data --list
# Run a benchmark.
# Omit the benchmark name to run all benchmarks. The full suite can take around
# 30 minutes to complete on default settings and 120 minutes to complete with
# --warmup-iter 3 --bench-iter 10.
./benchsuite --dir ./data --allow-missing
