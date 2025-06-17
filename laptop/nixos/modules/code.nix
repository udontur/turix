{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Search for packages: https://search.nixos.org/
  # Search for options: https://search.nixos.org/options?channel=24.11&size=50&sort=relevance&type=packages
  environment.systemPackages = with pkgs; [
    # CPP
    gcc
    gnumake
    boost186
    cmake
    fmt
    ftxui
    
    # Rust
    rustc
    cargo

    # Web dev
    bun
    nodePackages_latest.nodejs

    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt-rfc-style

    # Others
    slurp
    grim
    libnotify
    
  ];
}
