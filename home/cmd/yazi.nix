{ pkgs, config, ... }:

{
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml".source = ../../assets/yazi/yazi.toml;
}

# git clone git@github.com:udontur/SOMETHING.git
