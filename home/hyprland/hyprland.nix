{
  inputs,
  pkgs,
  config,
  ...
}:
{
  home.packages = with pkgs; [
    hyprcursor
    hyprnome
    brightnessctl
    wl-clipboard
    libnotify
    xdg-desktop-portal-wlr
  ];

  # Hyprland 0.55+ uses Lua for configuration (hyprlang is deprecated).
  # The home-manager module writes ~/.config/hypr/hyprland.lua when
  # configType = "lua" and appends `extraConfig` to it verbatim. The systemd
  # session hook (hyprland-session.target) is added automatically.
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    configType = "lua";
    extraConfig = ''
      -- Monitors
      hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@144", position = "0x0", scale = 1 })
      hl.monitor({ output = "DP-1", mode = "2560x1440@165", position = "1920x0", scale = 1.25 })

      -- Environment Variables
      hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
      hl.env("XCURSOR_SIZE", "25")
      hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
      hl.env("HYPRCURSOR_SIZE", "25")
      hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
      hl.env("QT_QPA_PLATFORM", "wayland")
      hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

      -- General configuration
      hl.config({
        general = {
          gaps_in = 4,
          gaps_out = { top = 0, right = 8, bottom = 8, left = 8 },
          border_size = 2,
          col = {
            active_border = "rgb(8ccff0)",
            inactive_border = "rgb(707070)",
          },
          resize_on_border = true,
          allow_tearing = false,
          layout = "dwindle",
        },
        decoration = {
          rounding = 8,
          active_opacity = 1.0,
          inactive_opacity = 0.9,
          blur = {
            enabled = true,
            size = 2,
            passes = 2,
          },
          shadow = {
            enabled = false,
          },
        },
        animations = {
          enabled = true,
        },
        input = {
          kb_layout = "us",
          kb_options = "caps:escape",
          follow_mouse = 1,
          sensitivity = 0,
          accel_profile = "flat",
        },
        xwayland = {
          force_zero_scaling = true,
        },
        dwindle = {
          preserve_split = true,
        },
        misc = {
          force_default_wallpaper = 0,
          disable_hyprland_logo = true,
          disable_splash_rendering = true,
        },
      })

      -- Animation curves and tree
      hl.curve("bcur", { type = "bezier", points = { { 0.76, 0 }, { 0.24, 1 } } })
      hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "bcur", style = "popin 80%" })
      hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "bcur", style = "fade" })
      hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "bcur" })
      hl.animation({ leaf = "border", enabled = false })
      hl.animation({ leaf = "borderangle", enabled = false })
      hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "bcur", style = "slidefade 20%" })

      -- Window rules
      hl.window_rule({ match = { class = "org.gnome.Nautilus" }, opacity = "0.8" })
      hl.window_rule({ match = { class = "dev.zed.Zed" }, opacity = "0.9" })

      -- Per-device input
      hl.device({ name = "rapoo-rapoo-composite-device", sensitivity = -0.7 })
      hl.device({ name = "keychron--keychron-link--keyboard-1", sensitivity = -0.7 })

      -- Keybinds: system
      hl.bind("SUPER + W", hl.dsp.window.close())
      hl.bind("SUPER + Delete", hl.dsp.exec_cmd("dms ipc call powermenu toggle"))
      hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
      hl.bind("SUPER + TAB", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))
      hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("vicinae toggle"), { release = true })
      hl.bind("SUPER + D", hl.dsp.exec_cmd("dms ipc call clipboard toggle"), { release = true })

      -- Keybinds: media controls
      hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("dms ipc call audio increment 1"), { locked = true })
      hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("dms ipc call audio decrement 1"), { locked = true })
      hl.bind("XF86AudioMute", hl.dsp.exec_cmd("dms ipc call audio mute"), { locked = true })
      hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("dms ipc call audio micmute"), { locked = true })
      hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("dms ipc call brightness increment 1 \"\""), { locked = true })
      hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("dms ipc call brightness decrement 1 \"\""), { locked = true })

      -- Keybinds: apps
      hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"))
      hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"))
      hl.bind("SUPER + F", hl.dsp.exec_cmd("zen-beta"))
      hl.bind("SUPER + V", hl.dsp.exec_cmd("zeditor"))
      hl.bind("SUPER + B", hl.dsp.exec_cmd("kitty btop"))
      hl.bind("SUPER + S", hl.dsp.exec_cmd("dms screenshot"))
      hl.bind("SUPER + C", hl.dsp.exec_cmd("hyprpicker -a -f hex"))

      -- Keybinds: windows and workspaces
      hl.bind("SUPER + O", hl.dsp.exec_cmd("hyprnome"))
      hl.bind("SUPER + I", hl.dsp.exec_cmd("hyprnome --previous"))
      hl.bind("SUPER + CTRL + O", hl.dsp.exec_cmd("hyprnome --move"))
      hl.bind("SUPER + CTRL + I", hl.dsp.exec_cmd("hyprnome --previous --move"))

      hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
      hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
      hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
      hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))

      hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
      hl.bind("SUPER + mouse:273", hl.dsp.window.float({ action = "toggle" }), { click = true })
      hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

      hl.bind("SUPER + CTRL + down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
      hl.bind("SUPER + CTRL + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
      hl.bind("SUPER + CTRL + up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
      hl.bind("SUPER + CTRL + left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))

      hl.bind("SUPER + CTRL + SHIFT + down", hl.dsp.window.swap({ direction = "l" }))
      hl.bind("SUPER + CTRL + SHIFT + up", hl.dsp.window.swap({ direction = "r" }))
      hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))

      -- Autostart
      hl.on("hyprland.start", function()
        hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 25")
        hl.exec_cmd("bash -c \"wl-paste --watch cliphist store &\"")
        hl.exec_cmd("zen-beta")
      end)
    '';
  };
}
