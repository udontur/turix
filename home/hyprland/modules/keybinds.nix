{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/keybinds.conf" = {
      text=''
        # System
        bind = SUPER, W, killactive,
        bind = SUPER, B, exec, dms ipc call processlist toggle
        bind = SUPER, Delete, exec, dms ipc call powermenu toggle
        bind = SUPER, L, exec, hyprlock
        bind = SUPER, TAB, exec, dms ipc call hypr toggleOverview
        bindr = SUPER, SUPER_L, exec, dms ipc call spotlight toggle
        bindr = SUPER, D, exec, dms ipc call clipboard toggle

        # Media controls
        bindl = , XF86AudioRaiseVolume, exec, dms ipc call audio increment 1
        bindl = , XF86AudioLowerVolume, exec, dms ipc call audio decrement 1
        bindl = , XF86AudioMute, exec, dms ipc call audio mute
        bindl = , XF86AudioMicMute, exec, dms ipc call audio micmute
        bindl = , XF86MonBrightnessUp, exec, dms ipc call brightness increment 1 ""
        bindl = , XF86MonBrightnessDown, exec, dms ipc call brightness decrement 1 ""

        # Apps
        bind = SUPER, Q, exec, kitty
        bind = SUPER, E, exec, nautilus
        bind = SUPER_Shift, E, exec, easyeffects
        bind = SUPER, F, exec, zen
        bind = SUPER, V, exec, code

        bind = SUPER, S, exec, hyprshot -m region -z --clipboard-only
        bind = SUPER_Shift, S, exec, hyprshot -m region -z 
        bind = SUPER, C, exec, hyprpicker -a -f hex

        # Windows and Workspace
        bind = SUPER, O, exec, hyprnome 
        bind = SUPER, I, exec, hyprnome --previous 
        bind = SUPER_Control, O, exec, hyprnome --move
        bind = SUPER_Control, I, exec, hyprnome --previous --move

        bind = SUPER, left, movefocus, l
        bind = SUPER, right, movefocus, r
        bind = SUPER, up, movefocus, u
        bind = SUPER, down, movefocus, d

        bindm = SUPER, mouse:272, movewindow
        bindc = SUPER, mouse:273, togglefloating
        bindm = SUPER, mouse:273, resizewindow

        bind = SUPER_Control, down, resizeactive, 0 50
        bind = SUPER_Control, right, resizeactive,  50 0
        bind = SUPER_Control, up, resizeactive, 0  -50
        bind = SUPER_Control, left, resizeactive,  -50 0
        
        bind = SUPER_Control_Shift, down, swapwindow, l
        bind = SUPER_Control_Shift, up, swapwindow, r
        bind = SUPER, J, togglesplit,
      '';
    };
  };
}
