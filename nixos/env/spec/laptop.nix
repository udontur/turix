{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  # Nix Helper, flake location
  programs.nh.flake = "/home/udontur/turix/hosts/laptop";

  # Kernel version
  boot.kernelPackages = pkgs.linuxPackages_6_17;
}
