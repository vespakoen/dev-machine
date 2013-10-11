#!/bin/sh
vagrant plugin install vagrant-salt
vagrant box add precise64 http://files.vagrantup.com/precise64.box
git clone https://github.com/Vespakoen/dev-machine.git $1
cd $1
vagrant up
# seems necessary for the salt bootstrap to execute
vagrant destroy
vagrant up
