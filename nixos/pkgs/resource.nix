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
    bibata-cursors
    adwaita-icon-theme
    gnome-themes-extra
    gtk2
    gtk3
    gtk4

    # Also need to put the fonts here
    noto-fonts
    noto-fonts-cjk-sans
    recursive
    jetbrains-mono
    nerdfix
    inter
    font-awesome
    whatsapp-emoji-font
  ];

  # Font
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    recursive
    jetbrains-mono
    nerdfix
    inter
    font-awesome
  ];
}
