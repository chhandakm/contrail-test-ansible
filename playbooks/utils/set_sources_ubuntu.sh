#!/bin/bash
sudo -s <<EOF
echo "Setup sources.list..."
echo "deb http://10.204.217.141/ubuntu xenial main restricted universe multiverse" > /etc/apt/sources.list
echo "deb http://10.204.217.141/ubuntu xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
sudo apt-get update;
sudo apt-get -y install apt-transport-https software-properties-common
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://packages.cloud.google.com/apt/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update;
EOF

