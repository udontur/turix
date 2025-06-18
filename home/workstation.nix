{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    ./apps/wofi.nix
    ./util/easyeffects.nix
    ./util/waybar.nix

    # Hyprland
    ./hyprland/workstation/hyprland.nix
    ./hyprland/workstation/modules/hyprwm.nix
    ./hyprland/workstation/modules/keybinds.nix
    ./hyprland/workstation/modules/system.nix
    ./hyprland/workstation/modules/others.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
