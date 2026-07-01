{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Core apps
    kitty
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.beta
    nautilus
    zed-editor

    # Apps
    obsidian
    proton-vpn
    inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default
    obs-studio
    zoom-us
    slack
    vesktop
    easyeffects
    resources

    # Terminal apps
    fastfetch
    helix
    btop-rocm
    yazi
    gdu
    bootiso # sudo bootiso -d /dev/sda Zorin-OS-18-Core-64-bit-r3.iso
    ffmpeg

    # Utility
    hyprpicker
    yt-dlp
    git
    bat
    upower
    loupe
    papers
    tree
    fd

    # Nix
    nix-init
    nixpkgs-hammering
    nixpkgs-fmt
    nixfmt
    nixfmt-tree
  ];
}
