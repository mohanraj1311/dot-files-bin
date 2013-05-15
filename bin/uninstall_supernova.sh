#!/bin/bash

#this script will uninstall the supernova installed using the 
# paired installer

if [[ $UID -eq 0 ]]; then
    echo "$0 must not be run as root"
    exit 1
fi

# Remove existing supernovas
if [ ! -d ~/bin/supernova ]; then
    echo "supernova not found"
    exit 1
fi
in_venv=`python ~/bin/check_venv.py`
if [ "$in_venv" = "0" ]; then
    echo "Within virtualenv. Execute deactivate first. Kthx"
    exit 1
fi
rm -rf ~/bin/supernova
echo "Supernova uninstalled"
exit 0
