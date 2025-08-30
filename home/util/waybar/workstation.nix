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
      }

      #workspaces button {
        padding: 0.3rem 0.6rem;
        margin: 0.4rem 0.25rem;
        border-radius: 6px;
        color: #a9a9a9;
        border-color: #707070;
        border-width: 2px;
        background-color: rgba(34, 34, 34, 0.6);
      }

      #workspaces button.active {
        padding: 0.3rem 0.6rem;
        margin: 0.4rem 0.25rem;
        border-radius: 6px;
        color: #a9a9a9;
        background-color: transparent;
      }

      #clock,
      #pulseaudio,
      #cpu,
      #memory,
      #window,
      #network {
        padding: 0.3rem 0.6rem;
        margin: 0.4rem 0.25rem;
        border-radius: 6px;
        color: #a9a9a9;
        background-color: transparent;
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
        on-click = "activate";
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
