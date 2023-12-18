CUR_DIR=$(pwd)

THEME=sp.zsh-theme
ZSH_CUSTOM_DIR="$HOME/.oh-my-zsh/custom"

if [ ! -f "$ZSH_CUSTOM_DIR/themes/$THEME" ]; then
    ln -s "$CUR_DIR/$THEME" "$ZSH_CUSTOM_DIR/themes/$THEME"
fi

FILES="$CUR_DIR/*"
for file in $FILES
  do
    if [ -d $file ];
    then
        sym="$ZSH_CUSTOM_DIR/plugins/$(basename $file)"
        if [ ! -f "$sym" ]; then
            ln -s "$file" "$sym"
        fi
    fi
  done 

if [ ! -f "$HOME/.zshrc" ]; then
    ln -s $CUR_DIR/.zshrc $HOME/.zshrc
fi
