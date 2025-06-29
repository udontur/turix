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
        hyprfocus {
          enabled = yes
          focus_animation = flash
          animate_floating = yes
          animate_workspacechange = yes
          bezier = bezIn, 0.5,0.0,1.0,0.5
          bezier = bezOut, 0.0,0.5,0.5,1.0
          bezier = overshot, 0.05, 0.9, 0.1, 1.05
          bezier = smoothOut, 0.36, 0, 0.66, -0.56
          bezier = smoothIn, 0.25, 1, 0.5, 1
          bezier = realsmooth, 0.28,0.29,.69,1.08
          flash {
            flash_opacity = 0.95
            in_bezier = realsmooth
            in_speed = 0.5
            out_bezier = realsmooth
            out_speed = 3
          }
       }
      '';
    };
  };
}
