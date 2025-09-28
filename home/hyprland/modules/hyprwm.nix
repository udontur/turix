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
        # Nautilus transparent
        windowrulev2 = opacity 0.8, class:org.gnome.Nautilus

        # btop float
        windowrulev2 = float, title:btop
        windowrulev2 = size 1300 750, title:btop
        
        # Smile emoji picker float
        windowrulev2 = float, title:Smile

        # CopyQ float
        windowrulev2 = float, class:com.github.hluk.copyq
        windowrulev2 = size 500 300, class:com.github.hluk.copyq

        # IDK what are these
        windowrulev2 = suppressevent maximize, class:.*
        windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
        windowrulev2 = rounding 16, floating:1

        # Dynamic window decoratins
        workspace = w[tv1], gapsout:0, gapsin:0
        workspace = f[1], gapsout:0, gapsin:0
        windowrulev2 = bordersize 0, floating:0, onworkspace:f[1]
        windowrulev2 = rounding 0, floating:0, onworkspace:f[1]

        # Hyprshot is broken
        layerrule = noanim, selection

        general {
          gaps_in = 4
          gaps_out = 0
          border_size = 2
          col.active_border = rgb(00f260) rgb(0575e6) 
          col.inactive_border = rgb(707070)
          resize_on_border = true
          allow_tearing = false
          layout = dwindle
        }

        decoration {
          rounding = 8
          active_opacity = 1
          inactive_opacity = 0.9
          # Shaders in spec
          blur {
            enabled = true
            size = 2
            passes = 2
          }
          shadow{
            enabled = false
          }
        }
        
        animations {
          enabled = yes
          bezier = bcur, 0.76, 0, 0.24, 1
          bezier = linear, 1, 1, 0, 0
          animation = windows, 1, 4, bcur, popin 80%
          animation = layers, 1, 4, bcur, fade
          animation = fade, 1, 4, bcur
          animation = border, 1, 4, default
          animation = borderangle, 1, 50, linear, loop
          animation = workspaces, 1, 6, bcur, slidefade 20%
        }
        
      '';
    };
  };
}
