{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # kicad

    # Temporary
    # gnome-system-monitor
    # impression
  ];
  virtualisation.vmware.host.enable = true;
}
