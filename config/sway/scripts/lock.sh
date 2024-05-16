#! /bin/sh

TMP_FILE_NAME="/tmp/_sway_lock_image_tmp.png"
FILE_NAME="/tmp/_sway_lock_image.png"
rm $FILE_NAME 2> /dev/null
wayshot -f $TMP_FILE_NAME
ffmpeg -i $TMP_FILE_NAME -filter_complex "gblur=sigma=50" $FILE_NAME -y
rm $TMP_FILE_NAME 2> /dev/null
swaylock -f -i $FILE_NAME
