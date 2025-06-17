{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    noto-fonts-cjk-sans
    bibata-cursors
    adwaita-icon-theme
    gnome-themes-extra
    gtk3
    gtk4
  ];
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    jetbrains-mono
    recursive
    nerdfix
    font-awesome
   ];
}
