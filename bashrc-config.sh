#!/usr/bin/env bash
export JSEP_CONFIG_DIR="$HOME/.jsep-config"

container=wol-api
# Aliases
alias up="source $HOME/.bashrc" # Update current session with latest bashrc changes
alias ebs="vim  $JSEP_CONFIG_DIR/bashrc-config.sh" # Edit bashrc config
alias ebls="vim  $HOME/.bashrc" # Edit local bashrc
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
# Pythonz https://github.com/saghul/pythonz 
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

 # Virtual env wrapper
#source /usr/local/bin/virtualenvwrapper.sh

# Add the following line to your ~/.bash_profile:
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Show the current branch e.g juan@ubuntu:~/myrepo(master*)$
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
unset color_prompt force_color_prompt

[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
