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
    kdePackages.kdenlive

    # Temporary
    # gnome-system-monitor
    brave
  ];
}
