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
  # Virtual Machine
  virtualisation.vmware.host.enable = true;
}
