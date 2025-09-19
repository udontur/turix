{ config, pkgs, ... }:

{
  imports = [
    ./apps/btop.nix
    ./apps/helix.nix
    ./apps/kitty.nix
    ./apps/wofi.nix

    ./term/git.nix
    ./term/yazi.nix
    ./term/zsh.nix

    ./env/theme.nix
    # Laptop: ./env/battery.nix

    ./env/hyprpaper/hyprpaper.nix
    # uni: ./util/waybar/: laptop or workstation
    # Workstation: ./util/easyeffects.nix
    # Laptop: ./util/hyprlock.nix

    # Hyprland
    ./hyprland/hyprland.nix
    ./hyprland/modules/hyprwm.nix
    ./hyprland/modules/keybinds.nix
    ./hyprland/modules/system.nix
    ./hyprland/modules/others.nix
    # uni: ./hyprland/spec/: laptop or workstation
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
