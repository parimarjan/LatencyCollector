## TODO: clone our version
git clone https://github.com/parimarjan/interbench.git
cd interbench
make

./interbench -t 90
./interbench -t 90 -r
./interbench -t 90 -C 29
## TODO: put only custom video/audio/etc load as background tasks
