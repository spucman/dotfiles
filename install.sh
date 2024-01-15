mkdir ~/.config
CUR_DIR=$(pwd)
ln -s "$CUR_DIR/config/nvim" ~/.config/nvim
ln -s "$CUR_DIR/ideavimrc" ~/.ideavimrc
source "$CUR_DIR/config/zsh/install.sh"
