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

# Brewfile
_mv $HOME/Brewfile $HOME/Brewfile_copy
ln -nfs $CONFIG_DIR/Brewfile $HOME/Brewfile

# Oh my ZSH theme
_mv $HOME/.p10k.zsh $HOME/.p10k.zsh_copy
ln -nfs $CONFIG_DIR/.p10k.zsh $HOME/.p10k.zsh
