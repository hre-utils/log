#!/bin/bash

PROGDIR=$( cd "$(dirname "${BASH_SOURCE[@]}")" ; pwd )
DATAFILE="${XDG_DATA_HOME:-$HOME/.local/share}/hre-utils/log/logfile.txt"

mkdir -pv "$(dirname "$DATAFILE")"
touch "$DATAFILE"

chmod +x "${PROGDIR}/log"
sudo ln -s "${PROGDIR}/log" '/usr/local/bin'
