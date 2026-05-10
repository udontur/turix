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
    vscode # legacy soon
    zed-editor
    gnome-calculator
    papers
    foliate
    hieroglyphic
    slack
    proton-vpn
    obs-studio
    vivaldi
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
