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
    "/home/udontur/.config/hypr/modules/spec.conf" = {
      text=''
        # Monitor
        monitor=DP-2, 1920x1080@144, 0x0, 1
        monitor=DP-1, 2560x1440@165, 1920x0, 1.25
      '';
    };
  };
}
