#!/bin/bash

#this script will install gister from tr3buchet's repo on github
#this script needs to be run as root (sudo ftw)

if [[ $UID -eq 0 ]]; then
    echo "$0 must not be run as root"
    exit 1
fi

sudo apt-get install curl git python-dev python-pip
sudo pip install keyring hgtools

git clone https://github.com/tr3buchet/gister.git ~/bin/gister
cd ~/bin/gister

sudo python setup.py install
curl -u 'roaet' -d '{"scopes":["gist"],"note":"gister script test"}' 'https://api.github.com/authorizations' '{  "created_at": "2012-01-08T03:19:47Z",  "app": {    "url": "http://developer.github.com/v3/oauth/#oauth-authorizations-api", "name": "gister script test (API)"  },  "note": "gister script test",  "url": "https://api.github.com/authorizations/102557",  "token": "34v098n3gv09n8345983458g493fm2fm245n03v",  "updated_at": "2012-01-08T03:19:47Z",  "scopes": [   "gist"], "note_url": null,  "id": 102557}'
echo "Ignore any errors from the curl response"
echo "Copy the hash in the 'token' value and paste it now then hit enter:"
python /usr/local/lib/python2.6/dist-packages/keyring-1.2.2-py2.6.egg/keyring/cli.py set github token

exit 0
