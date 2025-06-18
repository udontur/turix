{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    ./util/hyprlock.nix

    # Hyprland
    ./hyprland/laptop/hyprland.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
