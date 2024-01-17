{config, pkgs, ...}:

{  
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GDM display manager.
  services.xserver.displayManager.gdm.enable = true;

  # Exclude xserver packages
  services.xserver.excludePackages = with pkgs; [ xterm ];

}