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

  # Nix Helper, flake location
  programs.nh.flake = "/home/udontur/turix/hosts/laptop";

  # Kernel version
  boot.kernelPackages = pkgs.linuxPackages_6_17;
}
