{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/system.conf" = {
      text=''
        # Launch
        exec-once = hyprpaper
        exec-once = swayosd-server
        exec-once = swaync
        exec-once = hyprctl setcursor Bibata-Modern-Ice 25
        exec-once = systemctl --user start hyprpolkitagent
        # exec-once = waybar
        exec-once = zen
        exec-once = hyprlock
    
        # Environment Variables
        env = XCURSOR_THEME, Bibata-Modern-Ice
        env = XCURSOR_SIZE, 25
        env = HYPRCURSOR_THEME, Bibata-Modern-Ice
        env = HYPRCURSOR_SIZE, 25
        env = GTK_THEME, Adwaita-dark
        env = ELECTRON_OZONE_PLATFORM_HINT , auto
        env = QT_QPA_PLATFORM,wayland
        env = QT_QPA_PLATFORMTHEME,qt5ct

        # Monitors
        monitor=eDP-1, 1920x1200@60, 0x0, 1.25
      '';
    };
  };
}
