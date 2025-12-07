{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  imports = [
    ../hosts/workstation/hardware-configuration.nix
    ./global.nix

    # Specs (Workstation)
    ./pkgs/spec/workstation.nix
    ./env/spec/workstation.nix
  ];
}
