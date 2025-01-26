#! /bin/sh

TMP_FILE_NAME="$HOME/tmp/_sway_lock_image_tmp.png"
FILE_NAME="$HOME/tmp/_sway_lock_image.png"
rm $FILE_NAME 2> /dev/null

FOCUSED_OUTPUT=$(swaymsg -t get_outputs --raw | jq '. | map(select(.focused == true)) | .[0].name' -r)
wayshot -o "$FOCUSED_OUTPUT" -f $TMP_FILE_NAME
ffmpeg -i $TMP_FILE_NAME -filter_complex "gblur=sigma=50" $FILE_NAME -y
rm $TMP_FILE_NAME 2> /dev/null
swaylock -f -i $FILE_NAME
