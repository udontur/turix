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
          # Touchpad in spec
        }
        device{
          name=rapoo-rapoo-composite-device
          sensitivity=-0.7
          # Touchpad in spec
        }
        xwayland {
          force_zero_scaling = true
        }
        dwindle {
          pseudotile = true
          preserve_split = true
        }
        misc {
          force_default_wallpaper = 0     
          disable_hyprland_logo = true
          disable_splash_rendering = true
        }
      '';
    };
  };
}
