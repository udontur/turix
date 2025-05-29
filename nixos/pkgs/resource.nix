{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Resource
  environment.systemPackages = with pkgs; [
    noto-fonts-cjk-sans
    bibata-cursors
    adwaita-icon-theme
    gnome-themes-extra
    gtk2
    gtk3
    gtk4
    noto-fonts
    noto-fonts-cjk-sans
    recursive
    jetbrains-mono
    nerdfix
  ];

  # Font
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    recursive
    jetbrains-mono
    nerdfix
    font-awesome
  ];
}
