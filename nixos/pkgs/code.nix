{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Competitive Programming
    gcc
    python314

    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt
    nixfmt-tree
  ];
}
