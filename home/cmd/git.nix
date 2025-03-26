{ pkgs, config, ... }:

{
  programs.git = {
    enable = true;
    userName = "udontur";
    userEmail = "h@hadrian.CC";
  };
}

# git clone git@github.com:udontur/SOMETHING.git
