#!/bin/bash

./remove.sh
./apps.sh
./vscext.sh
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo reboot now