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
        background-color: rgba(34, 34, 34, 0.7);
      }

      #workspaces button.active {
        padding: 0.3rem 0.6rem;
        margin: 0.4rem 0.25rem;
        border-radius: 6px;
        color: #a9a9a9;
        background-color:rgba(60, 60, 60, 0.7);
      }

      #clock,
      #pulseaudio,
      #cpu,
      #memory,
      #window,
      #battery,
      #network {
        padding: 0.3rem 0.6rem;
        margin: 0.4rem 0.25rem;
        border-radius: 6px;
        color: #a9a9a9;
        background-color: rgba(34, 34, 34, 0.7);
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
        "battery"
      ];
      "hyprland/workspaces" = {
        format = "{id}";
        all-outputs = true;
        disable-scroll = false;
        active-only = false;
        move-to-monitor = false;
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
          headphone = "";
          default = [
            " "
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
      battery= {
        format= "{icon} {capacity}%";
        format-icons= ["" "" "" "" ""];
        interval=30;
      };
    }];
  };
}
