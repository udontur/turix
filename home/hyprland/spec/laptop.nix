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
    "/home/udontur/.config/hypr/modules/spec.lua" = {
      text = ''
        hl.on("hyprland.start", function()
          hl.exec_cmd("hyprlock")
        end)

        -- Laptop lock switch
        hl.bind("switch:Lid Switch", hl.dsp.exec_cmd("hyprlock"), { locked = true })

        -- Monitor
        hl.monitor({
          output   = "eDP-1",
          mode     = "3072x1920@165",
          position = "0x0",
          scale    = 1.5,
        })

        -- Trackpad
        hl.device({
          name        = "gxtp7867:00-27c6:0f90-touchpad",
          sensitivity = -0.2,
        })

        -- Workspace swipe gesture intentionally left unconfigured (gestures are
        -- opt-in in 0.55; not registering one is equivalent to gestures.workspace = false)

        hl.config({
          input = {
            touchpad = {
              natural_scroll = true,
              scroll_factor  = 0.15,
            },
          },
        })
      '';
    };
  };
}
