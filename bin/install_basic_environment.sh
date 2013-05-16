#!/bin/bash
# This script will install the basic python environment for debian

if [[ $UID -eq 0 ]]; then
    echo "$0 must not be run as root"
    exit 1
fi
sudo apt-get install vim git task
