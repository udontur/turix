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

        exec-once = bash -c "wl-paste --watch cliphist store &"
        exec-once = dms run
        # Launch
        # exec-once = hyprpaper
        # exec-once = emote
        # exec-once = copyq
        # exec-once = swayosd-server
        # exec-once = swaync
        exec-once = nohup easyeffects --gapplication-service
        # exec-once = waybar
        
        # App Launch
        exec-once = zen
        # Some in spec

        # Environment Variables
        env = XCURSOR_THEME, Bibata-Modern-Ice
        env = XCURSOR_SIZE, 25
        env = HYPRCURSOR_THEME, Bibata-Modern-Ice
        env = HYPRCURSOR_SIZE, 25
        env = GTK_THEME, Adwaita-dark
        env = ELECTRON_OZONE_PLATFORM_HINT , auto
        env = QT_QPA_PLATFORM,wayland
        env = QT_QPA_PLATFORMTHEME,qt5ct

        # Monitor: spec
      '';
    };
  };
}
