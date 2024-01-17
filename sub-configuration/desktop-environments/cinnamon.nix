{ config, pkgs, ... }:

{
  services.xserver.desktopManager.cinnamon.enable = true;

  environment.cinnamon.excludePackages = (with pkgs; []);
}