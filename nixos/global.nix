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
    
    #./pkgs/apps.nix
    #./pkgs/code.nix
    ./pkgs/resource.nix

    ./env/env.nix
    ./env/system.nix
    ./env/nono-zone.nix
  ];
}
