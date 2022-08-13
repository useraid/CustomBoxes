#!/bin/bash
# Finding Release
rel=$(lsb_release -r)
ver=$(cut -f2 <<< "$rel")
if [ "$ver" = "20.04" ];
then
    # Installing Essentials
    sudo apt install vlc gnome-tweak-tool gdebi plank gnome-shell-extension-manager curl git thefuck-y
    # Installing VS code
    sudo apt-get install wget gpg apt-transport-https -y
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt update
    sudo apt install code
elif [ "$ver" = "22.04" ];
then
    # Installing Essentials
    sudo apt install vlc gnome-tweak-tool gdebi gnome-shell-extension-manager curl git thefuck-y
    # Installing VS code
    sudo apt-get install wget gpg apt-transport-https -y
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt update
    sudo apt install code
fi