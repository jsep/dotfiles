#!/usr/bin/env zsh
source ./env.sh

function _mv {
  [ -f "$1" ] && mv "$1" "$2" # move file only if exists
}

# git
_mv $HOME/.gitconfig $HOME/.gitconfig_copy
ln -nfs $CONFIG_DIR/.gitconfig $HOME/.gitconfig

# zsh
_mv $HOME/.zshrc $HOME/.zshr_copy
ln -nfs $CONFIG_DIR/.zshrc $HOME/.zshrc

# IdeaVim
_mv $HOME/.ideavimrc $HOME/.ideavimrc_copy
ln -nfs $CONFIG_DIR/.ideavimrc $HOME/.ideavimrc
