#!/usr/bin/env bash
source ./console-log.sh
bash install-nodejs.sh
bash install-docker.sh
bash install-spotify.sh

consoleLog "All tools installed"