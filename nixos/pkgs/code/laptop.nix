{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # CPP
    gcc-unwrapped
    clang-tools
    # gnumake
    # boost186
    # cmake
    # fmt
    # ftxui
    
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
