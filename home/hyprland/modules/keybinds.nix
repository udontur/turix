{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/keybinds.lua" = {
      text = ''
        -- System
        hl.bind("SUPER + W", hl.dsp.window.close())
        hl.bind("SUPER + Delete", hl.dsp.exec_cmd("dms ipc call powermenu toggle"))
        hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
        hl.bind("SUPER + TAB", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))
        hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("vicinae toggle"), { release = true })
        hl.bind("SUPER + D", hl.dsp.exec_cmd("dms ipc call clipboard toggle"), { release = true })

        -- Media controls
        hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("dms ipc call audio increment 1"), { locked = true })
        hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("dms ipc call audio decrement 1"), { locked = true })
        hl.bind("XF86AudioMute", hl.dsp.exec_cmd("dms ipc call audio mute"), { locked = true })
        hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("dms ipc call audio micmute"), { locked = true })
        hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd('dms ipc call brightness increment 1 ""'), { locked = true })
        hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd('dms ipc call brightness decrement 1 ""'), { locked = true })

        -- Apps
        hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"))
        hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"))
        hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd("easyeffects"))
        hl.bind("SUPER + F", hl.dsp.exec_cmd("zen-beta"))
        hl.bind("SUPER + V", hl.dsp.exec_cmd("zeditor"))
        hl.bind("SUPER + B", hl.dsp.exec_cmd("kitty btop"))
        hl.bind("SUPER + Z", hl.dsp.exec_cmd("zoom"))

        hl.bind("SUPER + S", hl.dsp.exec_cmd("dms screenshot"))
        hl.bind("SUPER + C", hl.dsp.exec_cmd("hyprpicker -a -f hex"))

        -- Windows and Workspace
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
      '';
    };
  };
}
