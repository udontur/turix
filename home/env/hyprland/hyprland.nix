{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
    swayosd
    swaynotificationcenter
    hyprpicker
    hyprland
    hyprcursor
    # hyprshot my own flake
    hyprnome
    xdg-desktop-portal-hyprland
    hyprpolkitagent
    brightnessctl
    waybar
    wl-clipboard
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''
      source = ~/.config/hypr/modules/keybinds.conf
      source = ~/.config/hypr/modules/hyprwm.conf
      source = ~/.config/hypr/modules/system.conf
      source = ~/.config/hypr/modules/others.conf
    '';
  };
}
