{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  programs.yazi = {
    enable = true;
    settings.keymap=''
    [[manager.prepend_keymap]]
    on   = "<C-z>"
    run  = "unzip"
    desc = "Single command with `Ctrl + a`"

    '';
  };
}
