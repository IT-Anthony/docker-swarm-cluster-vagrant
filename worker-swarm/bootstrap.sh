#!/usr/bin/env bash

# Mise à jour des dépôts & paquets
apt-get update && apt-get upgrade -y

# Installation Docker Swarm
sudo apt-get install apt-transport-https software-properties-common ca-certificates -y
wget https://download.docker.com/linux/ubuntu/gpg && sudo apt-key add gpg
sudo add-apt-repository "deb https://download.docker.com/linux/debian stretch stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
