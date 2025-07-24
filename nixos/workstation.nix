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
    ./env/spec/workstation.nix
  ];
}
