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
    ./env/spec/workstation.nix
  ];
}
