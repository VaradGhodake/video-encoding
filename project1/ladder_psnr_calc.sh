# limiting source resolutions to these:
resolutions=("320_240" "640_480" "1280_720")

for video in video_ladder_*;
    do
        if [[ "$video" == *"${resolutions[0]}"* ]]; then
            original_resolution=resolutions[0]
            echo "${video} Match 1"
        fi

        if [[ "${video}" == *"${resolutions[1]}"* ]]; then
            original_resolution=resolutions[0]
            echo "${video} Match 2"
        fi

        if [[ "${video}" == *"${resolutions[2]}"* ]]; then
            original_resolution=resolutions[0]
            echo "${video} Match 3"
        fi

        ffmpeg -i $video -i original_${original_resolution}.y4m -lavfi psnr=stats_file=/dev/null -f null - &> ../psnr_${video}.txt
    done
