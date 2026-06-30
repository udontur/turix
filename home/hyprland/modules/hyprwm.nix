{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/hyprwm.lua" = {
      text = ''
        -- Nautilus transparent
        hl.window_rule({ match = { class = "org.gnome.Nautilus" }, opacity = "0.8" })

        -- VSCode transparent
        hl.window_rule({ match = { class = "code" }, opacity = "0.9" })

        hl.config({
          general = {
            gaps_in  = 4,
            gaps_out = { top = 0, right = 8, bottom = 8, left = 8 },
            border_size = 2,
            col = {
              active_border   = "rgb(8ccff0)",
              inactive_border = "rgb(707070)",
            },
            resize_on_border = true,
            allow_tearing    = false,
            layout = "dwindle",
          },

          decoration = {
            rounding = 8,
            active_opacity   = 1.0,
            inactive_opacity = 0.9,
            blur = {
              enabled = true,
              size    = 2,
              passes  = 2,
            },
            shadow = {
              enabled = false,
            },
          },

          animations = {
            enabled = true,
          },
        })

        hl.curve("bcur", { type = "bezier", points = { { 0.76, 0 }, { 0.24, 1 } } })

        hl.animation({ leaf = "windows",    enabled = true,  speed = 4, bezier = "bcur", style = "popin 80%" })
        hl.animation({ leaf = "layers",     enabled = true,  speed = 4, bezier = "bcur", style = "fade" })
        hl.animation({ leaf = "fade",       enabled = true,  speed = 4, bezier = "bcur" })
        hl.animation({ leaf = "border",     enabled = false })
        hl.animation({ leaf = "borderangle", enabled = false })
        hl.animation({ leaf = "workspaces", enabled = true,  speed = 6, bezier = "bcur", style = "slidefade 20%" })
      '';
    };
  };
}
