mkdir ~/.config
CUR_DIR=$(pwd)
ln -s "$CUR_DIR/config/nvim" "$HOME/.config/nvim"
ln -s "$CUR_DIR/config/alacritty" "$HOME/.config/alacritty"
ln -s "$CUR_DIR/ideavimrc" "$HOME/.ideavimrc"
ln -s "$CUR_DIR/tmux.conf" "$HOME/.tmux.conf"
source "$CUR_DIR/config/zsh/install.sh"
