resolutions=("320_240" "640_480" "1280_720")

for video in video_ladder_*;
    do
        if [[ "$video" == *"${resolutions[0]}"* ]]; then
            ffmpeg -i $video -i original_${resolutions[0]}.y4m -lavfi psnr=stats_file=/dev/null -f null - &> ../psnr_${video}.txt
            echo "${video} Match 1"
        fi

        if [[ "${video}" == *"${resolutions[1]}"* ]]; then
            ffmpeg -i $video -i original_${resolutions[1]}.y4m -lavfi psnr=stats_file=/dev/null -f null - &> ../psnr_${video}.txt
            echo "${video} Match 2"
        fi

        if [[ "${video}" == *"${resolutions[2]}"* ]]; then
            ffmpeg -i $video -i original_${resolutions[2]}.y4m -lavfi psnr=stats_file=/dev/null -f null - &> ../psnr_${video}.txt
            echo "${video} Match 3"
        fi
    done

