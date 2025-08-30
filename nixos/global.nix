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
    ./pkgs/resource.nix
    ./pkgs/code.nix
    ./pkgs/utils.nix
    ./pkgs/gpack.nix

    ./env/env.nix
    ./env/system.nix
    ./env/nono-zone.nix
  ];
}
