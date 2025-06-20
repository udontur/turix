{ pkgs, config, ... }:

{
  programs.yazi = {
    enable = true;
  };
  xdg.configFile."yazi/yazi.toml".text=''
    [opener]
    play = [
    	{ run = 'zen "$@"', orphan = true},
    ]
    edit = [
    	{ run = 'hx "$@"', block = true},
    ]
    open = [
    	{ run = 'zen "$@"', desc = "Open" },
    ]

    [mgr]
    show_hidden = true
'';
}
