{
  inputs,
  config,
  pkgs,
  libs,  
  ...
}:
{
  # Battery Saver
  services.tlp.enable = true;

  # Enable swap
  swapDevices = [{
    device = "/swapfile";
    size = 48 * 1000;
  }];

  # OS Prober
  boot.loader.grub.useOSProber = true;
}
