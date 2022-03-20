#!/usr/bin/env bash
export JCONFIG_DIR="$HOME/.jsep-config"

container=""
# Aliases
alias up="source $HOME/.zshrc" # Update current session with latest bashrc changes
alias ebs="vim  $JCONFIG_DIR/sh-config.sh" # Edit bashrc config
alias eh="sudo vim /etc/hosts" # Edit localhost file
alias ds="docker stop \$(docker ps -aq)" # Stop all docker containers
alias du="docker-compose up"
alias dup="docker-compose up -d"
alias dd="docker-compose down"
alias drm="docker rm \$(docker ps -aq)"
alias drmf="dd;dup"
alias dul="dd;dup;lw"
alias dubl="dd;dup --build;lw"
alias dm="git ls-files . --ignored --exclude-standard --others | grep migrations | sudo xargs rm -f"
alias lw="docker logs $container -f"
alias ew="docker exec -it $container bash"
alias cdr="cd $HOME/repos"
alias dco=docker-compose
alias d=docker

alias iub="sh $JCONFIG_DIR/install-ubuntu-tools.sh"
alias imac="sh $JCONFIG_DIR/install-mac-tools.sh"

# Brew
alias bbd="brew bundle dump --force"

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/etc/bash_completion.d/nvm" ] && . "$NVM_DIR/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Oh my sh
source $JCONFIG_DIR/oh-my-zsh.sh

