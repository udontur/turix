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
    xdg-desktop-portal-wlr
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
  };

  # Hyprland 0.55+ loads ~/.config/hypr/hyprland.lua in preference to the
  # legacy hyprland.conf. This entrypoint pulls in the modular config files
  # via lua's require(). Paths are relative to hyprland.lua; "." or "/" both
  # work as directory separators.
  home.file."/home/udontur/.config/hypr/hyprland.lua".text = ''
    require("modules.spec")
    require("modules.keybinds")
    require("modules.hyprwm")
    require("modules.system")
    require("modules.others")
  '';
}
