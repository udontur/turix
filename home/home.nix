{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.
  # home-manager.users.udontur.imports = [ ./hyprland/main.nix ];
  # nixOS unstable? need futher testing

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
    nnn
    mtr
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
  
  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file."~/.config/hypr/hyprland.conf".text=''
  # System
bind = SUPER, W, killactive,
bind = SUPER, Delete, exec, reboot
bind = SUPER_Control, P, exec, shutdown now
bind = SUPER, P, exit

# Apps
bind = SUPER, Q, exec, kitty
bind = SUPER, E, exec, nautilus
bind = SUPER, F, exec, firefox
bind = SUPER, A, exec, flatpak run app.zen_browser.zen
bind = SUPER_Shift, F, exec, chromium
bindr = SUPER, SUPER_L, exec, pkill wofi || wofi -a --normal-window --show drun --allow-images
bindl = ,switch:Lid Switch, exec, hyprlock
bind = SUPER, L, exec, hyprlock
bind = SUPER, S, exec, hyprshot -m region output -z --clipboard-only
bind = SUPER_Shift, S, exec, hyprshot -m -z region
bindr = SUPER, B, exec, pkill btop || kitty --title btop -e btop
bind = SUPER, C, exec, hyprpicker -a -f hex
bind = SUPER, V, exec, code
bind = SUPER, M, exec, gnome-music

# Windows and Workspace
bind = SUPER_Control, right, workspace, +1
bind = SUPER_Control, left, workspace, -1 
bind = SUPER_Control_SHIFT, right, movetoworkspace, +1
bind = SUPER_Control_SHIFT, left,  movetoworkspace, -1 
bind = SUPER, 1, workspace 1
bind = SUPER, 2, workspace 2
bind = SUPER, 3, workspace 3
bind = SUPER, 4, workspace 4
bind = SUPER, 5, workspace 5
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
bind = ,XF86MonBrightnessUp, exec, swayosd-client --brightness +1
bind = ,XF86MonBrightnessDown, exec, swayosd-client --brightness -1

# https://wiki.hyprland.org/Configuring/Variables/

general { 
    gaps_in = 4
    gaps_out = 0
    border_size = 2
    col.active_border = rgb(A1E754)
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
        touchpad {
        natural_scroll = true
        scroll_factor = 0.15
    }
}

gestures {
    workspace_swipe = false
}
device {
    name = syna0680:00-06cb:ce44-touchpad
    sensitivity = -0.2
}

xwayland {
  force_zero_scaling = true
}

# Launch
exec-once = hyprpaper
exec-once = swayosd-server
exec-once = chromium
exec-once = swaync
exec-once = nohup easyeffects --gapplication-service
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
monitor=eDP-1, 1920x1200@60, 0x0, 1.25
monitor=HDMI-A-1, 2560x1440@144, 1536x0, 1.25

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
#windowrulev2 = bordersize 0, floating:0, onworkspace:w[tv1]
#windowrulev2 = rounding 0, floating:0, onworkspace:w[tv1]
windowrulev2 = bordersize 0, floating:0, onworkspace:f[1]
windowrulev2 = rounding 0, floating:0, onworkspace:f[1]
'';
  home.file = {
   
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to ma1nage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/udontur/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
