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
    # Developer
    # inputs.wretch.packages."${system}".default
    # inputs.judgel.packages."${system}".default
    
    # CPP
    gcc
    #gnumake
    #boost186
    #cmake
    #fmt
    #vcpkg
    #pkg-config
    bazel_7

    # Umpire
    # gcc # C++
    # python314
    # go
    # zulu8 # Java
    # rustc

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

    # Package managers
    flatpak

    # Temporary
    # slurp
    # grim
  ];
}
