{ config, pkgs, ... }:
{

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
  # qt = {
  #   enable = true;
  #   platformTheme = "gnome";
  #   style = "adwaita-dark";
  # };
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      size = 25;
    };
    theme = {
      name = "Tokyonight-Dark-B";
      package = pkgs.tokyo-night-gtk;
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
        gtk-cursor-theme-name = "Bibata Modern Ice"
      '';
    };
  };
  dconf.settings."org/gnome/desktop/wm/preferences".button-layout = "";
  xdg.configFile = {
  "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
  "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
  "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
};

}
