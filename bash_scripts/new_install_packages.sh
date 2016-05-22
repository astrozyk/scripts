#!/usr/bin/bash
echo "======================================================="
echo "This script is going to install the following packages"
echo "======================================================="
echo "dnf"
echo "xchat"
echo "google-chrome"
echo "ansible"
echo "hipchat4"
echo "gnome-tweak-tool"
echo "numix-icon-theme"
echo "tmux"
echo "clusterssh"

echo "[atlassian-hipchat]
name=Atlassian Hipchat
baseurl=https://atlassian.artifactoryonline.com/atlassian/hipchat-yum-client/
enabled=1
gpgcheck=0
" > hipchat.repo
echo "[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
" > google-chrome.repo
sudo mv hipchat.repo /etc/yum.repos.d/.
sudo mv google-chrome.repo /etc/yum.repos.d/.
sudo dnf copr enable sspreitz/numix -y

sudo dnf install -y ansible clusterssh gnome-tweak-tool google-chrome-stable hipchat4 numix-icon-theme-circle tmux xchat
