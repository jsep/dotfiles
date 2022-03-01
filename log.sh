#!/usr/bin/env bash

function log {
  hashes="################################################################################"
  echo "$hashes"
  echo "# $1 #"
  echo "$hashes"
}
export -f log
