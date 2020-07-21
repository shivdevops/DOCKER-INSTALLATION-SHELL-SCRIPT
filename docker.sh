#!/bin/bash

#docker_installation

if [ ! -x /var/lib/docker ]; then

        echo "INSTALLING docker"
echo
echo
        echo "Y" | apt install apt-transport-https ca-certificates curl software-properties-common
echo
echo
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo
echo
        add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
echo
echo
        echo "Y" | apt update
echo
echo
        apt-cache policy docker-ce
echo
echo
        echo "Y" | sudo apt install docker-ce
echo
echo
         echo "docker successfully installed"

echo
echo

else
echo
echo
        echo "DOCKER ALREADY INSTALLED"
echo
echo

fi

#docker_installation