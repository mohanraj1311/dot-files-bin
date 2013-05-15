#!/bin/bash
#This script will install the basic tools in debian/ubuntu to install nova
#properly. It will additionally install nova.

# must be run as root

if [[ $UID -eq 0 ]]; then
    echo "$0 must not be run as root"
    exit 1
fi
sudo apt-get install python-dev python-pip libmysqlclient-dev libpq-dev \
    libxml2-dev libxslt1-dev python2.6-dev
sudo pip install flake8 hgtools
exit 0
