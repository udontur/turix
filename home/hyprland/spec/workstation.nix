{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  # Workstation
  home.file = {
    "/home/udontur/.config/hypr/modules/spec.lua" = {
      text = ''
        -- Monitor
        hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@144", position = "0x0",    scale = 1 })
        hl.monitor({ output = "DP-1",     mode = "2560x1440@165", position = "1920x0", scale = 1.25 })
      '';
    };
  };
}
