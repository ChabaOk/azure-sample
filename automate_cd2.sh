#!/bin/bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo rpm install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm
    sudo rpm install azure-cli -y
    sudo rpm install git 
    az --version
    sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl
    sudo cp /usr/local/bin/kubectl  /sbin/
    kubectl version --client
