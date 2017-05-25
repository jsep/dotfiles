#!/usr/bin/env bash
export JSEP_CONFIG_DIR="$HOME/.jsep-config"

# Aliases
alias up="source $HOME/.bashrc" # Update current session with latest bashrc changes
alias ebs="vim  $JSEP_CONFIG_DIR/bashrc-config.sh" # Edit bashrc config
alias ebls="vim  $HOME/.bashrc" # Edit local bashrc
alias eh="sudo vim /etc/hosts" # Edit localhost file
alias ds="docker stop \$(docker ps -aq)" # Stop all docker containers
alias du="docker-compose up"
alias dup="docker-compose up -d"
alias drm="docker rm \$(docker ps -aq)"
# Pythonz https://github.com/saghul/pythonz 
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

 # Virtual env wrapper
source /usr/local/bin/virtualenvwrapper.sh

# Show the current branch e.g juan@ubuntu:~/myrepo(master*)$
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
unset color_prompt force_color_prompt

