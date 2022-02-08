if [ $# -eq 0 ]; then
    echo "No source video provided"
    exit 1
fi

# video bitrates 
rates=("50k" "150k" "235k" "400k" "750k" "1050k" "2000k" "3000k" "4000k" "4500k")

# encode for resolutions:
# 320x240
# 640x480
# 1280x720
for rate in "${rates[@]}"
    do
        ffmpeg -y -i $1 -c:v libx264 -vf scale=320:240 -b:v $rate -pass 1 -an -f null /dev/null && ffmpeg -i $1 -c:v libx264 -vf scale=320:240 -b:v $rate -pass 2 video_ladder_${rate}_320_240.mp4

        ffmpeg -y -i $1 -c:v libx264 -vf scale=640:480 -b:v $rate -pass 1 -an -f null /dev/null && ffmpeg -i $1 -c:v libx264 -vf scale=640:480 -b:v $rate -pass 2 video_ladder_${rate}_640_480.mp4

        ffmpeg -y -i $1 -c:v libx264 -vf scale=1280:720 -b:v $rate -pass 1 -an -f null /dev/null && ffmpeg -i $1 -c:v libx264 -vf scale=1280:720 -b:v $rate -pass 2 video_ladder_${rate}_1280_720.mp4
 
   done

