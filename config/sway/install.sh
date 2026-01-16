sudo apt install sway\
    swaybg\
    swayidle\
    swaylock\
    slurp\
    wl-clipboard\
    jq\
    dunst\
    ffmpeg\
    libssl-dev\
    libsensors-dev\
    libpulse-dev\
    libnotmuch-dev\
    xwayland\
    pandoc\
    fonts-powerline\
    fonts-font-awesome\
    kanshi\
    xdg-desktop-portal-wlr\
    pavucontrol \
    python3-i3ipc \
    pulsaudio-utils \
    grim

## install wayshot
# https://github.com/waycrate/wayshot
    git clone https://github.com/waycrate/wayshot && cd wayshot
    make setup
    make
    sudo make install

## install i3status-rust
# https://github.com/greshake/i3status-rust.git
 git clone https://github.com/greshake/i3status-rust
 cd i3status-rust
 cargo install --path . --locked
 ./install.sh

## Install autotiling
# https://github.com/nwg-piotr/autotiling
# install it in /opt and link it to /usr/local/bin

## Monitor setup
# https://github.com/swaywm/sway/wiki#Multihead
# https://wayland.emersion.fr/kanshi/
# swaymsg -t get_outputs
#sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev


#sudo apt install materia-gtk-theme papirus-icon-theme
#sudo apt install lxappearance
#sudo apt install picom
