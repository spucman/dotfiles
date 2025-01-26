#! /bin/sh

wayshot -f $HOME/tmp/_sway_lock_image.png
ffmpeg -i $HOME/tmp/_sway_lock_image.png -filter_complex "gblur=sigma=50" $HOME/tmp/sway_lock_image.png -y
