#!/bin/sh
#sudo apt-get install git-core curl
#curl -L http://bootstrap.saltstack.org | sudo sh -s -- git develop
#mkdir ~/Projects
#cd ~/Projects && git clone git@github.com:Vespakoen/dev-machine.git
sudo ln -s "/home/koen/Projects/vespakoen/code/dev-machine/roots/salt" /srv/salt
sudo ln -s "/home/koen/Projects/vespakoen/code/dev-machine/roots/pillar" /srv/pillar
sudo mv /etc/salt/master /etc/salt/master.old
sudo mv /etc/salt/minion /etc/salt/minion.old
sudo mv master /etc/salt/master
sudo chown root:root /etc/salt/master /etc/salt/master
sudo mv minion /etc/salt/minion
sudo chown root:root /etc/salt/minion /etc/salt/minion
sudo salt-call --local state.highstate -l debug
