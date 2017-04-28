#!/usr/bin/env bash
source ./console-log.sh

wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
bash Anaconda3-4.3.1-Linux-x86_64.sh
rm Anaconda3-4.3.1-Linux-x86_64.sh
consoleLog "Anaconda successfully installed."
