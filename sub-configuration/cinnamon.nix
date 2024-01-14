{ config, pkgs, ... }:

{
  services.xserver.desktopManager.cinnamon.enable = false;

  environment.cinnamon.excludePackages = (with pkgs; []);
}