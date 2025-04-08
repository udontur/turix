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
    gtk3
  ];

  # Font
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    jetbrains-mono
  ];
}
