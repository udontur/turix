{ config, pkgs, ... }:

{
  imports = [
    ./apps/btop.nix
    ./apps/helix.nix
    ./apps/kitty.nix
    # Workstation: ./apps/wofi.nix

    ./term/git.nix
    ./term/yazi.nix
    ./term/zsh.nix

    ./env/theme.nix

    ./util/hyprpaper.nix
    # Workstation: ./util/easyeffects.nix
    # Laptop: ./util/hyprlock.nix
    # Workstation: ./util/waybar.nix

    # Hyprland
    # ./hyprland/workstation
    # ./hyprland/laptop
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
}
