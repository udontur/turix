{ pkgs, config, ... }:
{
  programs.kitty = {
    enable = true;
    extraConfig = ''
      background #161718
      foreground #ebebeb
      font_family Recursive Mono Casual Static
      font_size 12.0
      confirm_os_window_close 0
      background_opacity 0.5 # between 0.0 and 1.0
      background_blur 1 # Set to a positive value to enable background blur
    '';
  };
}
