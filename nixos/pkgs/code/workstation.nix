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
    gcc-unwrapped
    gnumake
    clang-tools
    cmake
    
    # Python
    # python311
    inputs.fix-python.packages.${system}.default
    
    # Rust
    rustc
    cargo

    # JavaScript
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
