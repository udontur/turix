{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Resource
    bibata-cursors
    adwaita-icon-theme
    gnome-themes-extra
    gtk2
    gtk3
    gtk4
    texliveFull

    # Also need to put the fonts here
    noto-fonts
    noto-fonts-cjk-sans
    recursive
    jetbrains-mono
    nerdfix
    inter
    font-awesome
  ];

  fonts.packages = with pkgs; [
    # Font
    noto-fonts
    noto-fonts-cjk-sans
    recursive
    jetbrains-mono
    nerdfix
    inter
    font-awesome
  ];
}
