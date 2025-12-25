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
    nautilus
    obsidian

    # Apps
    vscode
    inputs.leetcode.packages."${system}".default
    inputs.figma.packages."${system}".default
    gnome-calculator
    pdfarranger
    kdePackages.kdenlive
    papers
    foliate
    hieroglyphic
    papers
    slack
    protonvpn-gui
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
