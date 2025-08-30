{ pkgs, config, ... }:
{
  programs.kitty = {
    enable = true;
    extraConfig = ''
      background #2c2e34
      foreground #ebebeb
      font_family Recursive Mono Casual Static
      font_size 11.0
      background_opacity 0.7
      background_blue 22
      confirm_os_window_close 0
    '';
  };
}
