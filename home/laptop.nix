{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    ./util/hyprlock.nix
    ./util/waybar/laptop.nix

    # Hyprland
    ./hyprland/laptop/hyprland.nix
    ./hyprland/laptop/modules/hyprwm.nix
    ./hyprland/laptop/modules/keybinds.nix
    ./hyprland/laptop/modules/system.nix
    ./hyprland/laptop/modules/others.nix

  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
