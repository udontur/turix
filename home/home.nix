{ config, pkgs, ... }:

{
  home.username = "udontur";
  home.homeDirectory = "/home/udontur";
  imports=[
    ./hyprland.nix
    ./git.nix
  ];
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
  ];
  home.file = {
   
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
