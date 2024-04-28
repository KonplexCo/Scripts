#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce

# Setup folders
mkdir -p /myfolder

# Download Docker Compose file
curl -L "https://example.com/docker-compose.yml" -o /myfolder/docker-compose.yml

# Execute Docker Compose (assuming docker-compose is already installed, otherwise install it)
cd /myfolder && sudo docker-compose up -d
