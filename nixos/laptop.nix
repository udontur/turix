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
    ./env/spec/laptop.nix
  ];
}
