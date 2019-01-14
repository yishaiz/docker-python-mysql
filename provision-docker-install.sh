#!/bin/bash

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index
sudo apt-get update

# Install docker
sudo apt-get install docker-ce -y
sudo apt-get install docker-compose -y

# Create docker group 
sudo groupadd docker

# add our user to the group
sudo usermod -aG docker $USER

# Init docker on startup
sudo systemctl enable docker

# start docker service 
sudo systemctl start docker

### END ###
