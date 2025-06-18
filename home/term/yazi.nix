{ pkgs, config, ... }:

{
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml".text=''
    [opener]
    play = [
    	{ run = 'hx "$@"', orphan = true},
    ]
    edit = [
    	{ run = 'hx "$@"', block = true},
    ]
    open = [
    	{ run = 'xdg-open "$@"', desc = "Open" },
    ]
'';
}
