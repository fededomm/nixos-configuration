#!/bin/bash

user="fededomm"

home="/home/$user"

cp $home/.bashrc $home/Desktop/nixos-configuration/bashrc/
cp -r /etc/nixos/* $home/Desktop/nixos-configuration/