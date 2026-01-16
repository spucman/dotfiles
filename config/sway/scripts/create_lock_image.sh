#! /bin/sh

if which wayshot >/dev/null 2>&1; then
    wayshot -f $HOME/tmp/_sway_lock_image.png
else
    if which grim >/dev/null 2>&1; then
        grim -f $HOME/tmp/_sway_lock_image.png
    fi
fi


ffmpeg -i $HOME/tmp/_sway_lock_image.png -filter_complex "gblur=sigma=50" $HOME/tmp/sway_lock_image.png -y
