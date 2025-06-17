{ config, pkgs, ... }:

{
  # home-manager options: https://mynixos.com/options
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
  
  imports = [
    ./apps/kitty.nix
    ./apps/wofi.nix
    ./apps/vscode.nix
    ./apps/btop.nix
    ./apps/easyeffects.nix
    ./apps/waybar.nix
    ./apps/helix.nix
    
    ./cmd/zsh.nix
    ./cmd/git.nix
    ./cmd/yazi.nix

    ./env/hyprpaper.nix
    ./env/theme.nix
    ./env/hyprland/hyprland.nix
    ./env/hyprland/modules/keybinds.nix
    ./env/hyprland/modules/system.nix
    ./env/hyprland/modules/hyprwm.nix
    ./env/hyprland/modules/others.nix
  ];

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
  
}
