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
    python312

    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt-tree
    nixfmt-rfc-style
  ];
}
