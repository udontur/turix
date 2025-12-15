{ config, pkgs, ... }:

{
  imports = [
    ./global.nix

    # Hyprland
    ./hyprland/spec/workstation.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
  programs.dankMaterialShell.enable = true;
}
