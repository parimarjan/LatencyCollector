
mkdir -p ffmpeg
cd ffmpeg

#youtube-dl -o input.mp4 https://www.dailymotion.com/video/x17ylt9

##ffmpeg -i input.mp4 -i watermark.png -filter_complex "overlay" output.mp4
#ffmpeg -y -nostdin -i input.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -nostdin -i input.mp4 -b:v 64k output.mp4
#ffmpeg -y -nostdin -i input.mp4 -filter:v "rotate=90" output.mp4
#rm input.mp4

## ~35 mins, will take too long to process
#youtube-dl -o input2.mp4 https://www.dailymotion.com/video/x691qsf
#ffmpeg -y -nostdin -i input2.mp4 -vn -acodec copy output-audio.aac
#ffmpeg -y -nostdin -i input2.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -nostdin -i input2.mp4 -vf scale=640:480,setsar=1 output.mp4
#ffmpeg -y -nostdin -i input2.mp4 -r 30 output.mp4
#ffmpeg -y -nostdin -i input2.mp4 -aspect 1.7777 output.mp4
#rm input2.mp4

youtube-dl -o input3.mp4 https://www.dailymotion.com/video/x7zpeyp
ffmpeg -y -nostdin -i input3.mp4 -vn -acodec copy output-audio.aac
ffmpeg -y -nostdin -i input3.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -nostdin -i input3.mp4 -vf scale=640:480,setsar=1 output.mp4
ffmpeg -y -nostdin -i input3.mp4 -r 30 output.mp4
ffmpeg -y -nostdin -i input3.mp4 -aspect 1.7777 output.mp4
rm input3.mp4

youtube-dl -o input4.mp4 https://www.dailymotion.com/video/x4opm8u
ffmpeg -y -nostdin -i input4.mp4 -vn -acodec copy output-audio.aac
ffmpeg -y -nostdin -i input4.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -nostdin -i input4.mp4 -vf scale=640:480,setsar=1 output.mp4
ffmpeg -y -nostdin -i input4.mp4 -r 30 output.mp4
ffmpeg -y -nostdin -i input4.mp4 -aspect 1.7777 output.mp4
rm input4.mp4

youtube-dl -o input5.mp4 https://www.dailymotion.com/video/x2xw86f
ffmpeg -y -nostdin -i input5.mp4 -vn -acodec copy output-audio.aac
ffmpeg -y -nostdin -i input5.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
ffmpeg -y -nostdin -i input5.mp4 -vf scale=640:480,setsar=1 output.mp4
ffmpeg -y -nostdin -i input5.mp4 -r 30 output.mp4
ffmpeg -y -nostdin -i input5.mp4 -aspect 1.7777 output.mp4
rm input5.mp4

#youtube-dl -o input6.mp4 https://www.dailymotion.com/video/x8i49ql
#ffmpeg -y -nostdin -i input6.mp4 -vn -acodec copy output-audio.aac
#ffmpeg -y -nostdin -i input6.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -nostdin -i input6.mp4 -vf scale=640:480,setsar=1 output.mp4
#ffmpeg -y -nostdin -i input6.mp4 -r 30 output.mp4
#ffmpeg -y -nostdin -i input6.mp4 -aspect 1.7777 output.mp4
#rm input6.mp4

## ~20 mins, takes too long to process
#youtube-dl -o input7.mp4 https://www.dailymotion.com/video/x5bavmu
#ffmpeg -y -nostdin -i input7.mp4 -vn -acodec copy output-audio.aac
#ffmpeg -y -nostdin -i input7.mp4 -codec:v libx264 -codec:a libmp3lame output.mkv
#ffmpeg -y -nostdin -i input7.mp4 -vf scale=640:480,setsar=1 output.mp4
#ffmpeg -y -nostdin -i input7.mp4 -r 30 output.mp4
#ffmpeg -y -nostdin -i input7.mp4 -aspect 1.7777 output.mp4
#rm input7.mp4

cd ..
rm -rf ffmpeg
