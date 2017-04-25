#!/usr/bin/env bash
source ./console-log.sh

# Documentation
# https://docs.docker.com/engine/installation/linux/ubuntu/#install-docker

sudo apt-get update
# Recommended packages
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual \
    -y

# Setup the repository
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    -y

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Setup the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
consoleLog "Docker installation completed"
consoleLog "Log out and log back in so that your group \
 membership is re-evaluated."