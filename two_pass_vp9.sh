ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1280:720 -b:v 250k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1280:720 -b:v 250k -pass 2 -c:a libopus video_vp9_two_pass_250k_1280_720.webm

echo "Done. video 1"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=720:480 -b:v 250k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=720:480 -b:v 250k -pass 2 -c:a libopus video_vp9_two_pass_250k_720_480.webm

echo "Done. video 2"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1920:1080 -b:v 750k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1920:1080 -b:v 750k -pass 2 -c:a libopus video_vp9_two_pass_750k_1920_1080.webm

echo "Done. video 3"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1280:720 -b:v 750k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1280:720 -b:v 750k -pass 2 -c:a libopus video_vp9_two_pass_750k_1280_720.webm

echo "Done. video 4"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=720:480 -b:v 750k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=720:480 -b:v 750k -pass 2 -c:a libopus video_vp9_two_pass_750k_720_480.webm

echo "Done. video 5"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1920:1080 -b:v 2000k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1920:1080 -b:v 2000k -pass 2 -c:a libopus video_vp9_two_pass_2000k_1920_1080.webm

echo "Done. video 6"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1280:720 -b:v 2000k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=1280:720 -b:v 2000k -pass 2 -c:a libopus video_vp9_two_pass_2000k_1280_720.webm

echo "Done. video 7"

ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=720:480 -b:v 2000k -pass 1 -an -f null /dev/null && ffmpeg -i big_buck_bunny_1080p24.y4m -c:v libvpx-vp9 -vf scale=720:480 -b:v 2000k -pass 2 -c:a libopus video_vp9_two_pass_2000k_720_480.webm

echo "Done. video 8"

