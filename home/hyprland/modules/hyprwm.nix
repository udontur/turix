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
        windowrule = opacity 0.8, match:class org.gnome.Nautilus

        # VSCode transparent
        windowrule = opacity 0.9, mathc:class code

        general {
          gaps_in = 4
          gaps_out = 0, 8, 8, 8
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
