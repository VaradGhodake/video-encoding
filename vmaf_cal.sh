if [ $# -eq 0 ]; then
    echo "No encoder provided"
    exit 1
fi

resolutions=("1920_1080" "1280_720" "720_480")

for video in video_${1}*;
    do
        if [[ "$video" == *"${resolutions[0]}"* ]]; then
            ffmpeg -i $video -i original_${resolutions[0]}.y4m -lavfi libvmaf="model_path=vmaf.json":log_path=/dev/null -f null - &> ../vmaf_${video}.txt
            echo "${video} Match 1"
        fi

        if [[ "${video}" == *"${resolutions[1]}"* ]]; then
            ffmpeg -i $video -i original_${resolutions[1]}.y4m -lavfi libvmaf="model_path=vmaf.json":log_path=/dev/null -f null -  &> ../vmaf_${video}.txt
            echo "${video} Match 2"
        fi

        if [[ "${video}" == *"${resolutions[2]}"* ]]; then
            ffmpeg -i $video -i original_${resolutions[2]}.y4m -lavfi libvmaf="model_path=vmaf.json":log_path=/dev/null -f null -  &> ../vmaf_${video}.txt
            echo "${video} Match 3"
        fi
    done

