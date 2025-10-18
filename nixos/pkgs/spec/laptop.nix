{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Temporary
    # gnome-system-monitor
    # brave
    # vscode
    # obs-studio
  ];
}
