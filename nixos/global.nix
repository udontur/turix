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

    #./pkgs/spec
    ./pkgs/resource.nix
    ./pkgs/code.nix
    ./pkgs/utils.nix
    ./pkgs/apps.nix

    ./env/pkgs.nix
    ./env/system.nix
    ./env/nono-zone.nix
  ];
}
