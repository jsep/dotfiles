#!/usr/bin/env bash

# Append this to ~/.bashrc file 

alias up="source $HOME/.bashrc"
alias ebs="vim  $HOME/.bashrc"
 
# Show the current branch e.g juan@ubuntu:~/myrepo(master*)$
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
unset color_prompt force_color_prompt
