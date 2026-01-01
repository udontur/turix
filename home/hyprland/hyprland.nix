{
  inputs,
  pkgs,
  config,
  ...
}:
{
  home.packages = with pkgs; [
    hyprcursor
    hyprnome
    brightnessctl
    wl-clipboard
    libnotify
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    extraConfig = ''
      source = ~/.config/hypr/modules/keybinds.conf
      source = ~/.config/hypr/modules/hyprwm.conf
      source = ~/.config/hypr/modules/system.conf
      source = ~/.config/hypr/modules/others.conf
      source = ~/.config/hypr/modules/spec.conf
    '';
  };
}
