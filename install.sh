#!/bin/bash

# install the icecast apt repository into our apt sources
sh -c "echo deb http://download.opensuse.org/repositories/multimedia:/xiph/xUbuntu_16.04/ ./ >>/etc/apt/sources.list.d/icecast.list"

# sign the gpg key
wget -qO - http://icecast.org/multimedia-obs.key | apt-key add -

# update
apt-get update

# install icecast2 and ezstream
apt-get install icecast2 ezstream

echo ""
echo "Checking if icecast2 is running. If you see a version 2.4.2 or greater returned we are good to go..."
echo ""
icecast2 --version