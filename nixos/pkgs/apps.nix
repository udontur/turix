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
    inputs.zen-browser.packages."${system}".beta
    inputs.leetcode.packages."${system}".default
    nautilus
    obsidian

    # Apps
    vscode
    gnome-calculator
    pdfarranger
    kdePackages.kdenlive
    papers
    foliate
    hieroglyphic
    papers
    slack
    protonvpn-gui
    figma-linux
    gnome-font-viewer
    obs-studio
    chromium
    vesktop
    loupe

    # Terminal apps
    fastfetch
    helix
    btop-rocm
    yazi
    gdu
    inputs.umpire.packages."${system}".default
    inputs.osc.packages."${system}".default
  ];
}
