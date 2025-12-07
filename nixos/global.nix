{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  imports = [
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
