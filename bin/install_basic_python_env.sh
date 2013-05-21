#!/bin/bash
# This script will install the basic python environment for debian

if [[ $UID -eq 0 ]]; then
    echo "$0 must not be run as root"
    exit 1
fi
sudo apt-get install python-dev python-pip libmysqlclient-dev libpq-dev \
    libxml2-dev libxslt1-dev python2.6-dev
sudo pip --upgrade distribute
sudo pip --timeout 30 install flake8 hgtools ipython
exit 0
