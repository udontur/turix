{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/system.lua" = {
      text = ''
        -- System launch + App launch
        hl.on("hyprland.start", function()
          hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 25")
          hl.exec_cmd("wl-paste --watch cliphist store &")
          hl.exec_cmd("nohup easyeffects --gapplication-service")
          hl.exec_cmd("zen-beta")
        end)

        -- Environment Variables
        hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
        hl.env("XCURSOR_SIZE", "25")
        hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
        hl.env("HYPRCURSOR_SIZE", "25")
        hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
        hl.env("QT_QPA_PLATFORM", "wayland")
        hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
      '';
    };
  };
}
