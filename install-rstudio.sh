#!/usr/bin/env bash
source ./console-log.sh

sudo apt-get install -y gdebi-core
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
sudo gdebi -n rstudio-1.0.143-amd64.deb
rm rstudio-1.0.143-amd64.deb
consoleLog "Rstudio successfully installed"