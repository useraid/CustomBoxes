#!/bin/bash
rel=$(lsb_release -r)
ver=$(cut -f2 <<< "$rel")
if [ "$ver" = "20.04" ];
then
    echo "1"
    sudo apt install vlc gnome-tweak-tool gdebi plank gnome-shell-extension-manager -y
elif [ "$ver" = "22.04" ];
then
    echo "2"
    sudo apt install vlc gnome-tweak-tool gdebi gnome-shell-extension-manager -y
fi