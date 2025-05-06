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
    
    # GUI apps
    kitty
    # vscode MUST BE DECLARED IN HOME MANAGER
    inputs.zen-browser.packages."${system}".beta # zen
    nautilus
    yazi
    wofi
    obsidian
    easyeffects
    #chromium
    
    # zsh
    zsh
    
    # Utility apps and tools
    git
    neofetch
    btop
    unzip
    zip
    inputs.ossdmk.packages."${system}".default
    inputs.judgel.packages."${system}".default

    # CPP
    gcc
    gnumake
    boost186
    cmake
    fmt
    
    # Rust
    rustc
    cargo

    # Web dev
    bun
    nodejs_23
    gem

    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt

  ];
}
