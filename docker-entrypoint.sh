#!/bin/bash
function node_red_install() {
  if [[ ! -d "$1" ]]; then mkdir -p "$1"; fi
  if [[ ! -f "$1/package.json" ]]; then
    echo "Copying node red installation data to $1"
    cp -a "/data/." "$1"
  fi
}

# TODO:  customize
# node_red_install "/data"

echo "Starting node-red..."
npm start --userDir /node-red-data
