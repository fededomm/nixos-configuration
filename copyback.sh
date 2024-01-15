#!/bin/bash

user="fededomm"

home="/home/$user"

sudo cp $home/Desktop/nixos-configuration/configuration.nix /etc/nixos/
sudo cp $home/Desktop/nixos-configuration/hardware-configuration.nix /etc/nixos/
sudo cp -r $home/Desktop/sub-configuration* /etc/nixos/