{ pkgs, config, ... }:

{
  services.hyprpaper={
    enable=true;
    settings={
      preload=["~/.config/hypr/wallpaper.jpg"];
      wallpaper=[", ~/.config/hypr/wallpaper.jpg"];
    };
  };
  home.file={
    "/home/udontur/.config/hypr/wallpaper.jpg"={
      source=../../assets/hyprpaper/wallpaper.jpg;
    };
  };
}
