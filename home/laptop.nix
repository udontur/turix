{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    # Hyprland
    ./hyprland/spec/laptop.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "26.05";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
