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
    obsidian

    # Apps
    zed-editor
    gnome-calculator
    papers
    foliate
    hieroglyphic
    slack
    proton-vpn
    inputs.helium.packages.${system}.default
    obs-studio
    zoom-us
    vesktop
    loupe

    # Terminal apps
    fastfetch
    helix
    btop-rocm
    yazi
    gdu
    inputs.umpire.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.osc.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
