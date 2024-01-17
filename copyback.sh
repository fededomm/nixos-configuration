#!/bin/bash

user="fededomm"

home="/home/$user"

cp $home/Desktop/nixos-configuration/bashrc/.bashrc $home

sudo cp $home/Desktop/nixos-configuration/configuration.nix /etc/nixos/
#sudo cp $home/Desktop/nixos-configuration/hardware-configuration.nix /etc/nixos/
sudo cp -r $home/Desktop/nixos-configuration/sub-configuration /etc/nixos/
