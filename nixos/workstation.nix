{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
    ./global.nix

    ./pkgs/apps/workstation.nix
    ./pkgs/code/workstation.nix
  ];
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;
}
