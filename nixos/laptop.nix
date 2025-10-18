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

    # Specs (Laptop)
    ./pkgs/spec/laptop.nix
    ./env/spec/laptop.nix
  ];
}
