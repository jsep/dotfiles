#!/usr/bin/env bash

CONFIG_DIR="$HOME/.js-config"

sudo apt-get update
# Install dependencies
sudo apt-get install vim git wget python-software-properties curl -y

# Clone the config repo
git clone git@github.com:jsep/config.git ${CONFIG_DIR}
cd ${CONFIG_DIR}
# Append custom .bashrc configurations
cat bashrc-config.sh >> ~/.bashrc

./install-tools.sh

# Create repos dir
mkdir ~/repos

