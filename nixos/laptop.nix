{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  imports = [
    ../hosts/laptop/hardware-configuration.nix
    ./global.nix

    # Specs (Laptop)
    ./pkgs/spec/laptop.nix
    ./env/spec/laptop.nix
  ];
}
