#!/usr/bin/env bash
CONFIG_DIR="$HOME/.jsep-config"


# Clone the config repo
git clone git@github.com:jsep/dotfiles.git ${CONFIG_DIR}

source $CONFIG_DIR/log.sh
log "Config repo clone"

cd ${CONFIG_DIR}

# Link custom .shrc configurations
# ln .bashrc >> ~/.bashrc

log "Link .zshrc config"
export ZSH=$HOME/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
log "Oh My Zsh installed"

[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zhsrc.old
ln -s $CONFIG_DIR/.zshrc ~/.zshrc

[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.old
ln -s $CONFIG_DIR/.vimrc ~/.vimrc

[ -f ~/.ideavimrc ] && mv ~/.ideavimrc ~/.ideavimrc.old
ln -s $CONFIG_DIR/.ideavimrc ~/.ideavimrc

log "Link rc files"

source $CONFIG_DIR/git-config.sh

log "All tools installed"
# Create repos dir
mkdir -p ~/repos
log "repos dir created"

