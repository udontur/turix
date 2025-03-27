{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    # declare by apps
    hyprpaper
    swayosd
    swaynotificationcenter
    hyprpicker
    hyprland
    hyprcursor
    hyprshot
    hyprnome
    xdg-desktop-portal-hyprland
    hyprpolkitagent
    brightnessctl
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''
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
      bind = SUPER, L, exec, hyprlock
      bind = SUPER, S, exec, hyprshot -m region output -z --clipboard-only
      bind = SUPER_Shift, S, exec, hyprshot -m -z region
      bindr = SUPER, B, exec, pkill btop || kitty --title btop -e btop
      bind = SUPER, C, exec, hyprpicker -a -f hex
      bind = SUPER, V, exec, code
      bind = SUPER, M, exec, rhythm-box

      # Windows and Workspace
      bind = SUPER_Control, right, exec, hyprnome
      bind = SUPER_Control, left, exec, hyprnome --previous
      bind = SUPER_Control_SHIFT, right, exec, hyprnome --move
      bind = SUPER_Control_SHIFT, left, exec, hyprnome --previous --move
      bind = SUPER, left, movefocus, l
      bind = SUPER, right, movefocus, r
      bind = SUPER, up, movefocus, u
      bind = SUPER, down, movefocus, d
      bindm = SUPER, mouse:272, movewindow
      bindm = SUPER, mouse:273, resizewindow
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

      # Launch
      exec-once = hyprpaper
      exec-once = swayosd-server
      exec-once = zen
      exec-once = swaync
      # exec-once = nohup easyeffects --gapplication-service
      exec-once = hyprctl setcursor Bibata-Modern-Ice 25
      exec-once = systemctl --user start hyprpolkitagent

      # Environment Variables
      env = XCURSOR_THEME, Bibata-Modern-Ice
      env = XCURSOR_SIZE, 25
      env = HYPRCURSOR_THEME, Bibata-Modern-Ice
      env = HYPRCURSOR_SIZE, 25
      env = GTK_THEME, Adwaita-dark
      env = ELECTRON_OZONE_PLATFORM_HINT , auto
      env = QT_QPA_PLATFORM,wayland
      env = QT_QPA_PLATFORMTHEME,qt5ct

      # Monitors
      monitor=DP-2, 1920x1080@144, 0x0, 1
      monitor=DP-1, 2560x1440@165, 1920x0, 1.25

      # Window Rule
      windowrulev2 = size 1300 750, title:btop
      windowrulev2 = float, title:btop
      windowrulev2 = suppressevent maximize, class:.*
      windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
      windowrulev2 = rounding 16, floating:1

      layerrule = noanim, hyprpicker
      layerrule = noanim, selection 

      workspace = w[tv1], gapsout:0, gapsin:0
      workspace = f[1], gapsout:0, gapsin:0
      windowrulev2 = bordersize 0, floating:0, onworkspace:f[1]
      windowrulev2 = rounding 0, floating:0, onworkspace:f[1]

      general {
          gaps_in = 4
          gaps_out = 0
          border_size = 2
          col.active_border = rgb(a1e754)
          col.inactive_border = rgb(707070)
          resize_on_border = true
          allow_tearing = false
          layout = dwindle
      }
      decoration {
          rounding = 8
          active_opacity = 1
          inactive_opacity = 1
          blur {
              enabled = false
          }
          shadow{
              enabled = false
          }
      }
      animations {
          enabled = yes
          bezier = bcur, 0.76, 0, 0.24, 1
          animation = windows, 1, 6, bcur, popin 80%
          animation = layers, 1, 6, bcur, fade
          animation = fade, 1, 6, bcur
          animation = border, 1, 6, default
          animation = borderangle, 1, 6, bcur, loop
          animation = workspaces, 1, 6, bcur, slidefade 20%
      }
      dwindle {
          pseudotile = true
          preserve_split = true
      }
      master {
          new_status = master
      }
      misc {
          force_default_wallpaper = 0     
          disable_hyprland_logo = true
          disable_splash_rendering = true
      }
      input {
          kb_layout = us
          kb_options = 
          follow_mouse = 1
          sensitivity = 0
      }
      device{
          name=razer-razer-viper
          sensitivity=-0.7
      }
      xwayland {
          force_zero_scaling = true
      }
    '';
  };
}
