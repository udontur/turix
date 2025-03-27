{ config, pkgs, ... }:

{
  # home-manager options: https://mynixos.com/options
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
  imports = [
    ./env/hyprland.nix
    ./cmd/git.nix
    ./apps/kitty.nix
    ./apps/wofi.nix
    ./apps/vscode.nix
    ./env/sys-default.nix
    ./apps/btop.nix
    ./apps/easyeffects.nix
    ./cmd/zsh.nix
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      size = 25;
    };
    theme = {
      name = "Adwaita-dark";
      # package = pkgs.gnome.gnome-themes-extra;
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
  # Wayland, X, etc. support for session vars
  # systemd.user.sessionVariables = config.home-manager.users.udontur.home.sessionVariables;

  # qt = {
  #   enable = true;
  #   platformTheme = "gnome";
  #   style = "adwaita-dark";
  # };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/udontur/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";

}
