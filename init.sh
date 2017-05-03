#!/usr/bin/env bash
CONFIG_DIR="$HOME/.jsep-config"

sudo apt-get update
# Install dependencies
sudo apt-get install vim git wget byobu python-software-properties curl -y
echo "Packages installed"
# Clone the config repo
git clone git@github.com:jsep/config.git ${CONFIG_DIR}

source $CONFIG_DIR/console-log.sh
consoleLog "Config repo clone"

cd ${CONFIG_DIR}
# Append custom .bashrc configurations
cat .bashrc >> ~/.bashrc
consoleLog "Bashrc configs appended"

bash ./git-config.sh
bash ./python-config.sh
bash ./install-tools.sh
consoleLog "All tools installed"
# Create repos dir
mkdir -p ~/repos
consoleLog "repos dir created"
