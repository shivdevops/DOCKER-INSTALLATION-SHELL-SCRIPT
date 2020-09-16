#!/bin/bash

#docker_installation

if [ ! -x /var/lib/docker ]; then
      
        echo "INSTALLING docker"
echo
echo    #install docker dependencies 
         apt install apt-transport-https ca-certificates curl software-properties-common -y
echo
echo   #add docker’s official GPG key
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo
echo
        #set up the stable repository.
	add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"	
echo
echo
	#update the packages
	apt update -y

echo
echo
	#checks install from the Docker repo instead of the default Ubuntu repo:
	apt-cache policy docker-ce 
echo
echo

	#installing dcoker through docker-ce
	apt install docker-ce -y 
echo
echo
	#installing docker-compose
	apt install docker-compose -y
echo
echo
       #adds your username to the docker group
	usermod -aG docker ${USER}
       
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
