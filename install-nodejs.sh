#!/usr/bin/env bash
source ./console-log.sh

# Install required package
sudo apt-get install python-software-properties -y
# Add node.js PPA
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install nodejs
consoleLog "Nodejs installation completed."
# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
consoleLog "nvm installation completed."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install stable