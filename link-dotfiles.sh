#!/usr/bin/env zsh
source ./env.sh

function _mv {
  [ -f "$1" ] && mv "$1" "$2" # move file only if exists
}


# NVIM
_mv $HOME/.config/nvim $HOME/$HOME/.config/nvim_copy
ln -nfs $CONFIG_DIR/nvim $HOME/.config/nvim

