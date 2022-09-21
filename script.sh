#!/bin/bash

#Install docker.
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#The Docker daemon runs as root. Adding yourself to the docker group will let you use Docker without sudo.
sudo usermod -aG docker $USER && newgrp docker

#download latest version of kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

#make it executable
chmod +x ./kubectl

#move it into /usr/local/bin/
sudo mv ./kubectl /usr/local/bin/

#download the latest version of minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

#make it executable
chmod +x ./minikube

#move it somewhere in your $PATH
sudo mv ./minikube /usr/local/bin/









