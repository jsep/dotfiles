#!/bin/bash -xe

# You need to run this file just once
# It makes changes to the .gitconfig file in the home directory

# Configuring git to show colors in console
git config --global color.ui true

# Add aliases for basic git commands
git config --global alias.ac '!git add -A && git commit -m'
git config --global alias.pl '!git pull origin $(git rev-parse --abbrev-ref HEAD)'
git config --global alias.ph '!git push origin $(git rev-parse --abbrev-ref HEAD)'
git config --global alias.pld 'pull origin devel'
git config --global alias.phd 'push origin devel'
git config --global alias.plm 'pull origin master'
git config --global alias.phm 'push origin master'
git config --global alias.cp cherry-pick
git config --global alias.all 'add --all'
git config --global alias.st 'status'
git config --global alias.sts 'status -s'
git config --global alias.cl clone
git config --global alias.ci commit
git config --global alias.cim 'commit -m'
git config --global alias.cia 'commit --amend'
git config --global alias.co checkout
git config --global alias.cob 'checkout -b'
git config --global alias.br branch
git config --global alias.ff 'diff --word-diff'
git config --global alias.dc 'diff --cached'
git config --global alias.rb rebase

# # Add aliases for some advanced git commands
git config --global alias.rlog reflog
git config --global alias.pushall 'push --recurse-submodules=on-demand'

# # Add aliases for reset commands
git config --global alias.r reset
git config --global alias.r1 'reset HEAD^'
git config --global alias.r2 'reset HEAD^^'
git config --global alias.rh 'reset --hard'
git config --global alias.undo 'reset --hard'
git config --global alias.rh1 'reset HEAD^ --hard'
git config --global alias.rh2 'reset HEAD^^ --hard'

# # Add aliases to display log in a pretty format
git config --global alias.ls 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate' # log with pretty format
git config --global alias.ll 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat' # log with pretty format and changed files
git config --global alias.lol 'log --pretty=oneline --abbrev-commit --graph --decorat' # log with pretty format and graph timeline
