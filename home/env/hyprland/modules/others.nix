{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/others.conf" = {
      text=''
        input {
          kb_layout = us
          kb_options = caps:escape
          follow_mouse = 1
          sensitivity = 0
        }
        device{
          name=rapoo-rapoo-composite-device
          sensitivity=-0.7
        }
        xwayland {
          force_zero_scaling = true
        }
      '';
      enable=true;
      executable = false;
    };
  };
}