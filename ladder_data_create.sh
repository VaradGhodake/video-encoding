
rates=("50k" "100k")

for rate in "${rates[@]}"
    do
        ffmpeg -y -i big_buck_bunny_1080p24.y4m -c:v libx264 -vf scale=320:240 -b:v $rate -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libx264 -vf scale=320:240 -b:v $rate -pass 2 video_ladder_${rate}_320_240.mp4

        ffmpeg -y -i big_buck_bunny_1080p24.y4m -c:v libx264 -vf scale=640:480 -b:v $rate -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libx264 -vf scale=640:480 -b:v $rate -pass 2 video_ladder_${rate}_640_480.mp4

        if [ "${rate}" != "750k" ] && [ "${rate}" != "2000k" ]; then
            ffmpeg -y -i big_buck_bunny_1080p24.y4m -c:v libx264 -vf scale=1280:720 -b:v $rate -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libx264 -vf scale=1280:720 -b:v $rate -pass 2 video_ladder_${rate}_1280_720.mp4
        fi
 
   done

