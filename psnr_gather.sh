 for psnr in psnr_upscaled_video_ladder_*1280*; do tail -1 $psnr | grep -o -P "average:[0-9.]*" | grep -o -P "[0-9.]*"; done | sort | tr '\n' ', '
