{ pkgs, config, ... }:

{
  programs.git = {
    enable = true;
    settings.user = {
      name = "udontur";
      email = "h@hadrian.cc";
    };
  };
}

# git clone git@github.com:udontur/SOMETHING.git
