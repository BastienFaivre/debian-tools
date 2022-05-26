#!/bin/bash
#
# Update apt packages

echo -e 'Update apt packages\n'
# ask for super user
sudo -v
# update and clean apt packages
sudo apt-get update
sudo apt-get --with-new-pkgs upgrade -y --show-progress
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove --purge -y --show-progress
echo 'Update finished!'