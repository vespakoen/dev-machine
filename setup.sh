#!/bin/bash

echo "Please enter the path where you want the salt-master to be cloned (example: ~/Projects):"
read -e base_path
base_path=${base_path%/}

echo "Installing git-core and curl"
sudo apt-get install git-core curl

echo "Installing salt"
curl -L http://bootstrap.saltstack.org | sudo sh -s -- git develop

echo "Make sure the given path exists"
mkdir -p $base_path

echo "Cloning the salt-master"
cd $base_path && git clone https://github.com/Vespakoen/dev-machine.git

echo "Symlinking it into place"
sudo ln -s "$base_path/dev-machine/roots/salt" /srv/salt
sudo ln -s "$base_path/dev-machine/roots/pillar" /srv/pillar

echo "Backing up master and minion config (if any)"
sudo mv /etc/salt/master /etc/salt/master.old > /dev/null 2>&1
sudo mv /etc/salt/minion /etc/salt/minion.old > /dev/null 2>&1

echo "Symlinking new ones into place"
sudo ln -s "$base_path/dev-machine/master" /etc/salt/master > /dev/null 2>&1
sudo chown root:root /etc/salt/master /etc/salt/master > /dev/null 2>&1
sudo ln -s "$base_path/dev-machine/minion" /etc/salt/minion > /dev/null 2>&1
sudo chown root:root /etc/salt/minion /etc/salt/minion > /dev/null 2>&1

echo "Done! Now rename the machine.sls.example file (in $base_path/roots/pillar/) to machine.sls, configure it and then run 'sudo salt-call --local state.highstate -l debug'"
