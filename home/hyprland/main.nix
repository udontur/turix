{config, pkgs, ... }: 
{
  home.file."~/.config/hypr/hyprland.conf".text = ''

# https://github.com/udontur/hyprland
source = ~/.config/hypr/hypr/bind.conf
source = ~/.config/hypr/hypr/style.conf
source = ~/.config/hypr/hypr/system.conf

  '';
}
