{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/others.lua" = {
      text = ''
        hl.config({
          input = {
            kb_layout    = "us",
            kb_options   = "caps:escape",
            follow_mouse = 1,
            sensitivity  = 0,
            accel_profile = "flat",
            -- Touchpad in spec
          },
          xwayland = {
            force_zero_scaling = true,
          },
          dwindle = {
            -- dwindle.pseudotile was removed in Hyprland 0.55 (no longer functional)
            preserve_split = true,
          },
          misc = {
            force_default_wallpaper  = 0,
            disable_hyprland_logo    = true,
            disable_splash_rendering = true,
          },
        })

        -- Per-device sensitivity
        hl.device({
          name        = "rapoo-rapoo-composite-device",
          sensitivity = -0.7,
        })
        hl.device({
          name        = "keychron--keychron-link--keyboard-1",
          sensitivity = -0.7,
        })
        -- Touchpad in spec
      '';
    };
  };
}
