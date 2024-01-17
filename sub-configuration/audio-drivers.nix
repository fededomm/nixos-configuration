{ config, pkgs, ...}:

{ 
  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Load Driver audio
  boot.extraModprobeConfig = "
    options snd_soc_sof_es8336 quirk=0x02
    options snd-hda-intel dmic_detect=0
  ";
}