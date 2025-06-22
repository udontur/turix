{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Developer
    # inputs.wretch.packages."${system}".default
    # inputs.judgel.packages."${system}".default
    
    # C++
    gcc
    #gnumake
    #boost186
    cmake
    #fmt
    #vcpkg
    #pkg-config
    #bazel_7

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
    # nodePackages_latest.nodejs
    
    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt-rfc-style

    # Wakatime
    wakatime-cli    
    inputs.wakatime-ls.packages.${system}.default

    # Temporary

  ];
}
