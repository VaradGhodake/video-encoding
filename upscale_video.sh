for video in video_ladder*;
    do
        ffmpeg -i $video -vf scale=1920:1080 -preset slow -crf 18 upscaled_${video}
    done
