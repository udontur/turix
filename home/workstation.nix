{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    ./apps/wofi.nix
    ./util/easyeffects.nix
    ./util/waybar.nix

    # Hyprland
    ./hyprland/workstation/hyprland.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
