#!/usr/bin/bash
echo "======================================================================="
echo "This script is going to install dnf and upgrade the system to Fedora 23"
echo "======================================================================="
sleep 5
sudo yum install epel-release -y
sudo yum install dnf -y
sudo dnf update --refresh
