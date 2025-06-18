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
    
    #./pkgs/apps
    #./pkgs/code
    ./pkgs/resource.nix

    ./env/env.nix
    ./env/system.nix
    ./env/nono-zone.nix
  ];
}
