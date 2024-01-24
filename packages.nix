{config, pkgs, ...}:

{
  # Docker 
  virtualisation.docker.enable = true;

  # Enable git
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    config.credential.helper = "libsecret";
  };

  # Enable Steam
  programs.steam.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.fededomm = {
    isNormalUser = true;
    description = "fededomm";
    extraGroups = [ "networkmanager" "wheel" "docker"];
    packages = with pkgs; [
      libsForQt5.okular
      insomnia
      krita
      teams-for-linux
      discord
    ];
  };
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [ 
  #Ventoy
  #ventoy-full
    
  #system tools
    openvpn

  #Python and pip
  #poetry
    python3
    python311Packages.pip
    
  #Jetbrains
    jetbrains.pycharm-professional
    jetbrains.idea-ultimate
    jetbrains.goland
    jetbrains.datagrip

  #Gnome
    gnome-extension-manager
    gnome.gnome-terminal
    gnome.gnome-tweaks
    
  #Developement
    godot_4
    nodejs_21
    libxml2
    go
    
  #Firefox
    firefox
    thunderbird
    
  #Docker
    docker-compose
    docker-buildx
    
  #terminal
    btop
    neofetch
    starship
    wget
    
  #Icon theme  
    papirus-icon-theme
  ];

}
