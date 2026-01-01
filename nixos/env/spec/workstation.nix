{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  # Enable swap
  swapDevices = [
    {
      device = "/swapfile";
      size = 32 * 1000;
    }
  ];

  # Nix Helper, flake location
  programs.nh.flake = "/home/udontur/turix/hosts/workstation";

  # Kernel version
  boot.kernelPackages = pkgs.linuxPackages_6_18;
}
