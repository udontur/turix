{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    ./util/easyeffects/easyeffects.nix
    ./util/waybar/workstation.nix

    # Hyprland
    ./hyprland/spec/workstation.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
