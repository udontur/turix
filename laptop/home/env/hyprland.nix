{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    hyprpaper
    # hyprshot (my own flake)
    swayosd
    swaynotificationcenter
    hyprland
    hyprcursor
    hyprlock
    hyprnome
    xdg-desktop-portal-hyprland
    hyprpolkitagent
    brightnessctl
    waybar
    wl-clipboard
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''
      # System
      bind = SUPER, W, killactive,
      bind = SUPER, Delete, exec, reboot
      bind = SUPER_Control, D, exec, shutdown now

      # Apps
      bind = SUPER, Q, exec, kitty
      bind = SUPER, E, exec, nautilus
      bind = SUPER, F, exec, zen
      bind = SUPER_Shift, F, exec, firefox
      bindl = ,switch:Lid Switch, exec, hyprlock
      bind = SUPER, L, exec, hyprlock
      bind = SUPER, S, exec, hyprshot -m region -z --clipboard-only
      bind = SUPER_Shift, S, exec, hyprshot -m -z region
      bind = SUPER, V, exec, code
      bind = SUPER, U, exec, osu!
      bindr = SUPER, B, exec, pkill btop || kitty --title btop -e btop
      bind = SUPER, C, exec, chromium

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
      bindm = SUPER, mouse:273, resizewindow
      bind = SUPER_Control, down, swapwindow, l
      bind = SUPER_Control, up, swapwindow, r
      bind = SUPER, J, togglesplit,

      # Function Media
      bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+
      bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-
      bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
      bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
      bindel = ,XF86MonBrightnessUp, exec, brightnessctl s 1%+
      bindel = ,XF86MonBrightnessDown, exec, brightnessctl s 1%-
      
      # SwayOSD
      bind = ,XF86AudioRaiseVolume, exec, swayosd-client --output-volume +1 --max-volume 150
      bind = ,XF86AudioLowerVolume, exec, swayosd-client --output-volume -1 --max-volume 150
      bind = ,XF86AudioMute, exec, swayosd-client --output-volume mute-toggle
      bind = ,XF86MonBrightnessUp, exec, swayosd-client --brightness +1
      bind = ,XF86MonBrightnessDown, exec, swayosd-client --brightness -1
      
      # Launch
      exec-once = hyprpaper
      exec-once = swayosd-server
      exec-once = swaync
      exec-once = hyprctl setcursor Bibata-Modern-Ice 25
      exec-once = systemctl --user start hyprpolkitagent
      # exec-once = waybar
      exec-once = zen
      exec-once = hyprlock
    
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
      monitor=eDP-1, 1920x1200@60, 0x0, 1.25
      
     # Window Rule
      windowrulev2 = size 1300 750, title:btop
      windowrulev2 = float, title:btop
      windowrulev2 = suppressevent maximize, class:.*
      windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
     # windowrulev2 = rounding 16, floating:1

      #workspace = w[tv1], gapsout:0, gapsin:0
      #workspace = f[1], gapsout:0, gapsin:0
      #windowrulev2 = bordersize 0, floating:0, onworkspace:f[1]
      #windowrulev2 = rounding 0, floating:0, onworkspace:f[1]

      general {
          gaps_in = 0
          gaps_out = 0
          border_size = 0
          # col.active_border = rgb(a1e754)
          # col.inactive_border = rgb(707070)
          resize_on_border = false
          allow_tearing = false
          layout = dwindle
      }
      decoration {
          rounding = 0
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
          enabled = false
          #bezier = bcur, 0.76, 0, 0.24, 1
          #animation = windows, 1, 6, bcur, popin 80%
          #animation = layers, 1, 6, bcur, fade
          #animation = fade, 1, 6, bcur
          #animation = border, 1, 6, default
          #animation = borderangle, 1, 6, bcur, loop
          #animation = workspaces, 1, 6, bcur, slidefade 20%
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
      gestures{
        workspace_swipe=false
      }
      input {
          kb_layout = us
          follow_mouse = 1
          kb_options = caps:escape
          sensitivity = 0
          touchpad{
            natural_scroll=true
            scroll_factor=0.15
          }
      }
      device{
          name=syna0680:00-06cb:ce44-touchpad
          sensitivity=-0.2
      }
      xwayland {
          force_zero_scaling = true
      }
    '';
  };
}
