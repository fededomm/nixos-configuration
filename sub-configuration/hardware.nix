{config, pkgs, ...}:

{
  hardware.enableAllFirmware = true;

  # Intel Driver for davinci resolve
  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
        intel-compute-runtime
    ];
  };
}