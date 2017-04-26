#!/usr/bin/env bash
source console-log.sh
CONFIG_DIR="$HOME/.js-config"

sudo apt-get update
# Install dependencies
#sudo apt-get install vim git wget python-software-properties curl -y
consoleLog "Packages installed"
# Clone the config repo
git clone git@github.com:jsep/config.git ${CONFIG_DIR}
consoleLog "Config repo clone"
cd ${CONFIG_DIR}
# Append custom .bashrc configurations
cat .bashrc >> ~/.bashrc
consoleLog "Bashrc configs appended"

bash ./install-tools.sh
consoleLog "All tools installed"
# Create repos dir
mkdir -p ~/repos
consoleLog "repos dir created"
