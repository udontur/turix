{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Temporary

    # Developer
    # inputs.umpire.packages.${system}.default
    # inputs.osc.packages.${system}.default

    # CPP
    gcc
    clang-tools
    gnumake
    cmake
    fmt

    # Python
    python312
    uv
    inputs.fix-python.packages.${system}.default
    ruff

    # Rust
    rustc
    cargo

    # Web dev
    bun
    nodePackages_latest.nodejs
    hexo-cli

    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt-rfc-style
  ];
}
