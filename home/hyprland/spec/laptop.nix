{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  # Laptop
  home.file = {
    "/home/udontur/.config/hypr/modules/spec.conf" = {
      text = ''
        # Laptop lock switch
        bindl = ,switch:Lid Switch, exec, hyprlock

        # Monitor
        monitor=eDP-1, 3072x1920@165, 0x0, 1.5

        # Trackpad
        device{
            name=gxtp7867:00-27c6:0f90-touchpad
            sensitivity=-0.2
        }
        gestures{
          workspace=false
        }
        input {
            touchpad{
              natural_scroll=true
              scroll_factor=0.15
            }
        }
      '';
    };
  };
}
