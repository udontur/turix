# NixOS manual: https://nixos.org/manual/nixos/stable/

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
    ./modules/code.nix
    ./modules/enable.nix
    ./modules/resource.nix
    ./modules/system.nix
    ./modules/env.nix
    ./modules/desktop-apps.nix
  ];

  # ******NOTES******
  # Stable for Laptop (cuz I do not want to break it)
  # setup auto clear in NIxos
  # make a rebuid script
}
