{ config, pkgs, ... }:
{

  # Remove default close button
  dconf.settings."org/gnome/desktop/wm/preferences".button-layout = "";

  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      size = 25;
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-cursor-theme-name = "Bibata Modern Ice"
      '';
    };
  };

}
