#!/usr/bin/env bash

function _log {
  hashes"################################################################################"
  echo "$hashes"
  echo "# $1 #"
  echo "$hashes"
}
export -f _log
