{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    ./env/hyprlock.nix
    # ./apps/waybar/laptop.nix

    # Hyprland
    ./hyprland/spec/laptop.nix

  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
