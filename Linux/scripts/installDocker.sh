#!/bin/bash

## install docker
# remove prior installed docker version - if installed
echo $PASSWD_Name | sudo apt-get remove docker docker-engine
# install docker via install script
curl -sSL https://get.docker.com/ | sh
# give current user to docker | optional
echo $PASSWD_Name | sudo usermod -aG docker $USER
# takes effect after loggout
