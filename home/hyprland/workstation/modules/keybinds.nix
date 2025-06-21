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
        bind = SUPER, Delete, exec, reboot
        bind = SUPER_Control, P, exec, shutdown now
        bind = SUPER, P, exit

        # Apps
        bind = SUPER, Q, exec, kitty
        bind = SUPER, E, exec, nautilus
        bind = SUPER_Shift, E, exec, easyeffects
        bind = SUPER, F, exec, zen
        bindr = SUPER, SUPER_L, exec, pkill wofi || wofi -a --normal-window --show drun --allow-images
        bindr = SUPER, B, exec, pkill btop || kitty --title btop -e btop
        bind = SUPER, V, exec, kitty yazi

        bind = SUPER, S, exec, hyprshot -m region -z --clipboard-only
        bind = SUPER_Shift, S, exec, hyprshot -m region -z 
        bindr = SUPER, M, exec, pkill smile || smile
        bind = SUPER, D, exec, copyq hide || copyq show
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

        bind = SUPER, tab, overview:toggle
        bindm = SUPER, mouse:272, movewindow
        bindm = SUPER, mouse:273, resizewindow
        bind = SUPER_Control, down, resizeactive, 0 50
        bind = SUPER_Control, right, resizeactive,  50 0
        bind = SUPER_Control, up, resizeactive, 0  -50
        bind = SUPER_Control, left, resizeactive,  -50 0
        
        bind = SUPER_Control, down, swapwindow, l
        bind = SUPER_Control, up, swapwindow, r
        bind = SUPER, J, togglesplit,

        # Function Media
        bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+
        bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-
        bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

        # SwayOSD
        bind = ,XF86AudioRaiseVolume, exec, swayosd-client --output-volume +1 --max-volume 150
        bind = ,XF86AudioLowerVolume, exec, swayosd-client --output-volume -1 --max-volume 150
        bind = ,XF86AudioMute, exec, swayosd-client --output-volume mute-toggle
      '';
    };
  };
}
