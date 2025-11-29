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
      text = ''
        # Nautilus transparent
        windowrulev2 = opacity 0.8, class:org.gnome.Nautilus

        # VSCode transparent
        windowrulev2 = opacity 0.9, class:code

        # IDK what are these
        windowrulev2 = suppressevent maximize, class:.*
        windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0

        # Hyprshot is broken
        layerrule = noanim, selection

        general {
          gaps_in = 4
          gaps_out = 8, 8, 0, 8
          border_size = 2
          col.active_border = rgb(8ccff0)
          col.inactive_border = rgb(707070)
          resize_on_border = true
          allow_tearing = false
          layout = dwindle
        }

        decoration {
          rounding = 8
          active_opacity = 1
          inactive_opacity = 0.9
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
          animation = windows, 1, 4, bcur, popin 80%
          animation = layers, 1, 4, bcur, fade
          animation = fade, 1, 4, bcur
          animation = border, 0
          animation = borderangle, 0
          animation = workspaces, 1, 6, bcur, slidefade 20%
        }

      '';
    };
  };
}
