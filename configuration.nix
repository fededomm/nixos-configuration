# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./sub-configuration/desktop-environments/gnome.nix
      ./sub-configuration/desktop-environments/cinnamon.nix
      ./sub-configuration/fonts.nix
      ./sub-configuration/drivers/nvidia-drivers.nix
      ./sub-configuration/drivers/audio-drivers.nix
      ./sub-configuration/xserver.nix
      ./sub-configuration/local-timezone-layout.nix
      ./sub-configuration/packages.nix
      ./sub-configuration/bootloader.nix
      ./sub-configuration/network.nix
      ./sub-configuration/ssh.nix
      ./sub-configuration/printer.nix
      ./sub-configuration/hardware.nix
    ];
  
  # Hide nixos doc
  documentation.nixos.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
