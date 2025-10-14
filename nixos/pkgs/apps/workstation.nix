{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    easyeffects
    kicad

    # Temporary
    # gnome-system-monitor
    brave
  ];
}
