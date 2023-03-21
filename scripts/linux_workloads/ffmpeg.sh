
mkdir -p ffmpeg

youtube-dl -o input.mp4 https://www.dailymotion.com/video/x17ylt9

#ffmpeg -i input.mp4 -i watermark.png -filter_complex "overlay" output.mp4
ffmpeg -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -i input.mp4 -b:v 64k output.mp4
ffmpeg -i input.mp4 -filter:v "rotate=90" output.mp4

youtube-dl -o input.mp4 https://www.dailymotion.com/video/x691qsf

ffmpeg -i input.mp4 -vn -acodec copy output-audio.aac
ffmpeg -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv

#ffmpeg -i input.mp4 -vf scale=640:480,setsar=1 output.mp4

#ffmpeg -i input.mp4 -r 30 output.mp4

#ffmpeg -i input.mp4 -aspect 1.7777 output.mp4


cd ..
rm -rf ffmpeg
