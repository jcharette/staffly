#!/bin/bash

#apt-get update
apt-get -y install puppet pip
#apt-get -y upgrade

pip install awscli

# create base directory for system-wide puppet
mkdir -p /etc/puppet/modules

puppet="/usr/bin/puppet"

modules=( puppetlabs/stdlib puppetlabs/apache )

# check to see if all modules we need are install.  if not, install
for module in ${modules[@]}; do
        $puppet module list | grep -q $(basename $module)
        if [ $? != 0 ]; then
                $puppet module install $module
        fi
done

exit 0
