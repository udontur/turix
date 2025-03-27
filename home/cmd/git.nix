{ pkgs, config, ... }:

{
  programs.git = {
    enable = true;
    userName = "udontur";
    userEmail = "h@hadrian.cc";
  };
}

# git clone git@github.com:udontur/SOMETHING.git
