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

    # Specs (Workstation)
    ./pkgs/spec/workstation.nix
    ./env/spec/workstation.nix
  ];
}
