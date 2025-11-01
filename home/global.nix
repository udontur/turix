{ config, pkgs, ... }:

{
  imports = [
    ./apps/helix/helix.nix
    ./apps/kitty.nix
    ./apps/wofi.nix
    ./apps/anyrun.nix
    # uni: ./apps/waybar/: laptop or workstation
    # Workstation: ./apps/easyeffects.nix

    ./term/btop/btop.nix
    ./term/git.nix
    ./term/yazi.nix
    ./term/zsh.nix

    ./env/theme.nix
    ./env/hyprpaper/hyprpaper.nix
    # Laptop: ./env/hyprlock.nix

    # Hyprland
    ./hyprland/hyprland.nix
    ./hyprland/modules/hyprwm.nix
    ./hyprland/modules/keybinds.nix
    ./hyprland/modules/system.nix
    ./hyprland/modules/others.nix
    # uni: ./hyprland/spec/: laptop or workstation

    inputs.dankMaterialShell.homeModules.dankMaterialShell.default
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";

  programs.dankMaterialShell.enable = true;
}
