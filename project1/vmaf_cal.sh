if [ $# -eq 0 ]; then
    echo "No encoder provided"
    exit 1
fi

resolutions=("1920_1080" "1280_720" "720_480")

# downscaling vmaf calculation
for video in video_${1}*;
    do
        if [[ "$video" == *"${resolutions[0]}"* ]]; then
            original_resolution=resolutions[0]
            echo "${video} Match 1"
        fi

        if [[ "${video}" == *"${resolutions[1]}"* ]]; then
            original_resolution=resolutions[1]
            echo "${video} Match 2"
        fi

        if [[ "${video}" == *"${resolutions[2]}"* ]]; then
            original_resolution=resolutions[2]
            echo "${video} Match 3"
        fi

        ffmpeg -i $video -i original_${original_resolution}.y4m -lavfi libvmaf="model_path=vmaf.json":log_path=/dev/null -f null - &> ../vmaf_${video}.txt
    done

