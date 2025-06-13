{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/hyprwm.conf" = {
      text=''
        
        # btop float
        windowrulev2 = float, title:btop
        windowrulev2 = size 1300 750, title:btop
        
        # Smile emoji picker float
        windowrulev2 = float, title:Smile
        windowrulev2 = size 1300 800, title:btop

        # Window Rule
        windowrulev2 = suppressevent maximize, class:.*
        windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
        windowrulev2 = rounding 16, floating:1

        # Window Decoratins
        workspace = w[tv1], gapsout:0, gapsin:0
        workspace = f[1], gapsout:0, gapsin:0
        windowrulev2 = bordersize 0, floating:0, onworkspace:f[1]
        windowrulev2 = rounding 0, floating:0, onworkspace:f[1]

        general {
          gaps_in = 4
          gaps_out = 0
          border_size = 2
          col.active_border = rgb(a1e754)
          col.inactive_border = rgb(707070)
          resize_on_border = true
          allow_tearing = false
          layout = dwindle
        }
        dwindle {
          pseudotile = true
          preserve_split = true
        }
        
        decoration {
          rounding = 8
          active_opacity = 1
          inactive_opacity = 0.95
          blur {
            enabled = enable
            size = 2
            passes =1
          }
          shadow{
            enabled = false
          }
        }
        animations {
          enabled = yes
          bezier = bcur, 0.76, 0, 0.24, 1
          animation = windows, 1, 4, bcur, popin 80%
          animation = layers, 1, 4, bcur, fade
          animation = fade, 1, 4, bcur
          animation = border, 1, 4, default
          animation = borderangle, 1, 4, bcur, loop
          animation = workspaces, 1, 6, bcur, slidefade 20%
        }
        
        misc {
          force_default_wallpaper = 0     
          disable_hyprland_logo = true
          disable_splash_rendering = true
        }
      '';
      enable=true;
      executable = false;
    };
  };
}