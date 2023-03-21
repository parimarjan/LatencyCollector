
mkdir -p ffmpeg
cd ffmpeg

youtube-dl -o input.mp4 https://www.dailymotion.com/video/x17ylt9

#ffmpeg -i input.mp4 -i watermark.png -filter_complex "overlay" output.mp4
ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -i input.mp4 -b:v 64k output.mp4
ffmpeg -y -i input.mp4 -filter:v "rotate=90" output.mp4
rm input.mp4

## ~35 mins, will take too long to process
#youtube-dl -o input.mp4 https://www.dailymotion.com/video/x691qsf
#ffmpeg -y -i input.mp4 -vn -acodec copy output-audio.aac
#ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -i input.mp4 -vf scale=640:480,setsar=1 output.mp4
#ffmpeg -y -i input.mp4 -r 30 output.mp4
#ffmpeg -y -i input.mp4 -aspect 1.7777 output.mp4
#rm input.mp4

youtube-dl -o input.mp4 https://www.dailymotion.com/video/x7zpeyp
ffmpeg -y -i input.mp4 -vn -acodec copy output-audio.aac
ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -i input.mp4 -vf scale=640:480,setsar=1 output.mp4
ffmpeg -y -i input.mp4 -r 30 output.mp4
ffmpeg -y -i input.mp4 -aspect 1.7777 output.mp4
rm input.mp4

youtube-dl -o input.mp4 https://www.dailymotion.com/video/x4opm8u
ffmpeg -y -i input.mp4 -vn -acodec copy output-audio.aac
ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -i input.mp4 -vf scale=640:480,setsar=1 output.mp4
ffmpeg -y -i input.mp4 -r 30 output.mp4
ffmpeg -y -i input.mp4 -aspect 1.7777 output.mp4
rm input.mp4

youtube-dl -o input.mp4 https://www.dailymotion.com/video/x2xw86f
ffmpeg -y -i input.mp4 -vn -acodec copy output-audio.aac
ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -i input.mp4 -vf scale=640:480,setsar=1 output.mp4
ffmpeg -y -i input.mp4 -r 30 output.mp4
ffmpeg -y -i input.mp4 -aspect 1.7777 output.mp4
rm input.mp4

#youtube-dl -o input.mp4 https://www.dailymotion.com/video/x8i49ql
#ffmpeg -y -i input.mp4 -vn -acodec copy output-audio.aac
#ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -i input.mp4 -vf scale=640:480,setsar=1 output.mp4
#ffmpeg -y -i input.mp4 -r 30 output.mp4
#ffmpeg -y -i input.mp4 -aspect 1.7777 output.mp4
#rm input.mp4

## ~20 mins, takes too long to process
#youtube-dl -o input.mp4 https://www.dailymotion.com/video/x5bavmu
#ffmpeg -y -i input.mp4 -vn -acodec copy output-audio.aac
#ffmpeg -y -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -i input.mp4 -vf scale=640:480,setsar=1 output.mp4
#ffmpeg -y -i input.mp4 -r 30 output.mp4
#ffmpeg -y -i input.mp4 -aspect 1.7777 output.mp4
#rm input.mp4

cd ..
rm -rf ffmpeg
