{ pkgs, config, ... }:

{
  home.file = {
    "/home/udontur/.config/wallpaper/wallpaper.jpg" = {
      source = ./wallpaper.jpg;
    };
  };
}
