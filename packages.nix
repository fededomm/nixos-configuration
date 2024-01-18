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
      teams-for-linux
    ];
  };
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    godot_4
    python3
    starship
    jetbrains.idea-ultimate
    jetbrains.goland
    jetbrains.datagrip
    gnome-extension-manager
    gnome.gnome-terminal
    firefox
    thunderbird
    vscode
    go
    neofetch
    wget
    btop
    docker-compose
    docker-buildx
    papirus-icon-theme
    gnome.gnome-tweaks
    discord
    libxml2
  ];

}