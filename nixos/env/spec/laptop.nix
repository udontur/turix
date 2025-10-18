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

  # Nix Helper, flake location
  programs.nh.flake = "/home/udontur/turix/hosts/laptop";

}
