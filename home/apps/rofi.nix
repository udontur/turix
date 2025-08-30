{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    rofi-calc
    rofi-emoji
  ];
  programs.rofi = {
    enable=true;
    font = "Recursive Linear Casual Static";
    plugins = with pkgs; [
      rofi-calc
      rofi-emoji
    ];
    theme = "theme.rasi";
  };
}
