#!/usr/bin/env bash
source ./console-log.sh

# Add R repository
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list

# Add R to Ubuntu Keyring
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

# Install R-Base
sudo apt-get update
sudo apt-get install -y r-base r-base-dev
consoleLog "R successfully installed"