{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./apps/helix/helix.nix
    ./apps/kitty.nix
    ./apps/easyeffects/easyeffects.nix
    ./quickshell/dms.nix

    ./term/btop/btop.nix
    ./term/git.nix
    ./term/yazi.nix
    ./term/zsh.nix

    ./env/theme.nix
    ./env/wallpaper/wallpaper.nix
    ./env/hyprlock.nix

    # Hyprland
    ./hyprland/hyprland.nix
    ./hyprland/modules/hyprwm.nix
    ./hyprland/modules/keybinds.nix
    ./hyprland/modules/system.nix
    ./hyprland/modules/others.nix
    # uni: ./hyprland/spec/: laptop or workstation
  ];
}
