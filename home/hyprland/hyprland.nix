{ inputs, pkgs, config, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
    hyprcursor
    hyprnome
    hyprpolkitagent
    brightnessctl
    wl-clipboard
    libnotify
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    # plugins = [
      # inputs.Hyprspace.packages.${pkgs.system}.Hyprspace
    # ];
    package = inputs.hyprland.packages.${pkgs.system}.hyprland; 
    extraConfig = ''
      source = ~/.config/hypr/modules/keybinds.conf
      source = ~/.config/hypr/modules/hyprwm.conf
      source = ~/.config/hypr/modules/system.conf
      source = ~/.config/hypr/modules/others.conf
      # source = ~/.config/hypr/modules/spec.conf
    '';
  };
}
