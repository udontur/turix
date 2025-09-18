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

    
    # Temporary
    # gnome-system-monitor
    # chromium
    brave
    vscode
    # obs-studio
    pdfarranger
  ];
}
