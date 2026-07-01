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
    ../hardware-configuration.nix

    ./pkgs/resource.nix
    ./pkgs/apps.nix

    ./env/pkgs.nix
    ./env/system.nix
    ./env/nono-zone.nix
  ];
}
