# NixOS manual: https://nixos.org/manual/nixos/stable/

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
    
    ./pkgs/desktop.nix
    ./pkgs/code.nix
    ./pkgs/resource.nix

    ./env/env.nix
    ./env/system.nix
    ./env/nono-zone.nix
  ];
}
