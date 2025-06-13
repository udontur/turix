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
        # System launch
        exec-once = hyprctl setcursor Bibata-Modern-Ice 25
        exec-once = systemctl --user start hyprpolkitagent
        exec-once = copyq

        # Launch
        exec-once = hyprpaper
        exec-once = swayosd-server
        exec-once = swaync
        exec-once = nohup easyeffects --gapplication-service
        exec-once = waybar
        
        # App Launch
        exec-once = zen

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
        monitor=DP-2, 1920x1080@144, 0x0, 1
        monitor=DP-1, 2560x1440@165, 1920x0, 1.25
      '';
      enable=true;
      executable = false;
    };
  };
}