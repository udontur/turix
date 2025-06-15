{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
    hyprcursor
    # hyprshot my own flake
    
    hyprnome
    # hyprlandPlugins.hyprscrolling

    xdg-desktop-portal-hyprland
    hyprpolkitagent
    
    hyprpicker
    swayosd
    swaynotificationcenter
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
