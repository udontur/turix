{ config, pkgs, ... }:

{
  # home-manager options: https://mynixos.com/options
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
  imports = [
    ./env/hyprland.nix
    ./cmd/git.nix
    ./apps/kitty.nix
    ./apps/wofi.nix
    ./apps/vscode.nix
    ./apps/btop.nix
    ./apps/easyeffects.nix
    ./cmd/zsh.nix
    ./env/theme.nix
    #./apps/yazi.nix
    #./apps/waybar.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";

}
