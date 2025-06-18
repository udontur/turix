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
        dwindle {
            pseudotile = true
            preserve_split = true
        }
        misc {
            force_default_wallpaper = 0     
            disable_hyprland_logo = true
            disable_splash_rendering = true
        }
        device{
            name=syna0680:00-06cb:ce44-touchpad
            sensitivity=-0.2
        }
        xwayland {
            force_zero_scaling = true
        }
      '';
    };
  };
}
