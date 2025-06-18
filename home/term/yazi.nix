{ pkgs, config, ... }:

{
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml".source = ../../assets/yazi/yazi.toml;
}
