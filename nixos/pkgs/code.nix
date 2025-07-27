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
    
    # CPP
    gcc
    clang-tools
    gnumake
    cmake
    fmt
    
    # Python
    python312
    inputs.fix-python.packages.${system}.default
    python312Packages.python-lsp-server                                 
    python312Packages.black

    # Rust
    rustc
    cargo

    # Web dev
    bun
    nodePackages_latest.nodejs
    pnpm
    
    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt-rfc-style

    # Wakatime
    wakatime-cli
    inputs.wakatime-ls.packages.${system}.default

  ];
}
