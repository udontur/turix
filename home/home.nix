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
    ./apps/btop.nix
    ./apps/easyeffects.nix
    ./cmd/zsh.nix
    ./env/theme.nix
    #./apps/yazi.nix
  ];
  # Wayland, X, etc. support for session vars
  # systemd.user.sessionVariables = config.home-manager.users.udontur.home.sessionVariables;

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

  # The forbidden corner
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";

}
