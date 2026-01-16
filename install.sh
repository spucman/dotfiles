#!/bin/bash

create_symlink() 
{
  if [ ! -e "$2" ]; then
    ln -s "$1" "$2"
  fi
}

mkdir -p "$HOME/Pictures/Screenshots"
mkdir -p "$HOME/.config/gtk-3.0"
mkdir -p "$HOME/.config/sway"

CUR_DIR=$(pwd)

create_symlink "$CUR_DIR/config/nvim" "$HOME/.config/nvim"
create_symlink "$CUR_DIR/config/alacritty" "$HOME/.config/alacritty"
create_symlink "$CUR_DIR/config/dunst" "$HOME/.config/dunst"
create_symlink "$CUR_DIR/config/i3status-rust" "$HOME/.config/i3status-rust"
create_symlink "$CUR_DIR/config/kanshi" "$HOME/.config/kanshi"
create_symlink "$CUR_DIR/config/systemd" "$HOME/.config/systemd"
create_symlink "$CUR_DIR/config/bat" "$HOME/.config/bat"

create_symlink "$CUR_DIR/config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
create_symlink "$CUR_DIR/config/sway/config" "$HOME/.config/sway/config"
create_symlink "$CUR_DIR/config/sway/sway.d" "$HOME/.config/sway/sway.d"
create_symlink "$CUR_DIR/ideavimrc" "$HOME/.ideavimrc"
create_symlink "$CUR_DIR/tmux.conf" "$HOME/.tmux.conf"

mkdir -p "$HOME/.local/bin/sway"

create_symlink "$CUR_DIR/config/sway/scripts/lock.sh" "$HOME/.local/bin/sway/lock.sh"
create_symlink "$CUR_DIR/config/sway/wallpaper" "$HOME/Pictures/wallpaper"

bat cache --build

source "$CUR_DIR/config/zsh/install.sh"
