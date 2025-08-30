{ pkgs, config, ... }:
{
  programs.waybar = {
    enable = true;
    style = ''
      * {
        min-height: 0;
        min-width: 0;
        font-family: "Recursive Sans Casual Static";
        font-size: 14px;
        font-weight: 600;
      }

      #waybar {
        transition-property: background-color;
        transition-duration: 0.5s;
        background-color: transparent;
        margin: 0.4rem 0.25rem;
      }

      #workspaces button {
        border-radius: 6px;
        color: #a9a9a9;
      }

      #workspaces button.active {
        border-radius: 6px;
        color: #a9a9a9;
        background-color: transparent;
      }

      #pulseaudio,
      #cpu,
      #memory,
      #window,
      #network {
        border-radius: 6px;
        color: #a9a9a9;
        background-color: transparent;
        padding: 0.3rem 0.6rem;
      }

      #clock {
        border-radius: 6px;
        color: #ffffff;
        background: linear-gradient(90deg,rgba(0, 242, 96, 1) 0%, rgba(5, 117, 230, 1) 100%);
        padding: 0.3rem 0.6rem;
        margin: 0.3rem 0;
      }
    '';
    settings = [{
      layer = "bottom";
      position = "top";
      height = 30;
      spacing = 2;
      exclusive=true;
      gtk-layer-shell= true;
      fixed-center= true;
      passthrough = false;
      modules-left = [
        "hyprland/workspaces"
      ];
      modules-center = [
        "clock"
      ];
      modules-right = [
        "network"
        "cpu"
        "memory"
        "pulseaudio"
      ];
      "hyprland/workspaces" = {
        format = "{id}";
        all-outputs = true;
        on-click = "none";
        disable-scroll = false;
      };
      clock = {
        tooltip = false;
        format = "{:%I:%M %a %d %b}";
      };
      cpu = {
        format = " {usage}%";
        tooltip = true;
        interval = 1;
      };
      memory = {
        format = "{used:0.1f}GB";
        interval = 1;
      };
      pulseaudio = {
        format = "{icon} {volume}%";
        format-muted = "  muted";
        format-icons = {
          default = [
            " "
            " "
            " "
          ];
        };
      };
      "network"={
        rotete=0;
        format="󰇚 {bandwidthDownBytes}";
        interval=1;
      };
    }];
  };
}
