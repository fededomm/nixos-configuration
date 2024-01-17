{ config, pkgs, ... }:

{
  # Allow unfree packages (Nvidia drivers)
  nixpkgs.config.allowUnfree = true;
}