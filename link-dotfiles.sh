#!/usr/bin/env zsh
source ./env.sh

function _mv {
  [ -f "$1" ] && mv "$1" "$2"
}

# git
_mv $HOME/.gitconfig $HOME/.gitconfig_copy
ln -nfs $CONFIG_DIR/.gitconfig $HOME/.gitconfig

# zsh
_mv $HOME/.zshrc $HOME/.zshr_copy
ln -nfs $CONFIG_DIR/.zshrc $HOME/.zshrc

# Brewfile
# ln -nfs $CONFIG_DIR/Brewfile $HOME/Brewfile
