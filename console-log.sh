#!/usr/bin/env bash

function consoleLog {
  hashes="##########"
  echo "$hashes"
  echo "# $1 #"
  echo "$hashes"
}
export -f consoleLog