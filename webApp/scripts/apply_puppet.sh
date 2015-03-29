#!/bin/bash

BASE_DIR="/etc/puppet"

/usr/bin/puppet apply --modulepath=${BASE_DIR}/modules ${BASE_DIR}/codedeploy/manifests/webapp.pp
