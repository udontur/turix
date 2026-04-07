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
    vscode # legacy soon
    zed-editor
    inputs.leetcode.packages."${system}".default
    inputs.figma.packages."${system}".default
    gnome-calculator
    papers
    foliate
    hieroglyphic
    slack
    protonvpn-gui
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
    inputs.umpire.packages."${system}".default
    inputs.osc.packages."${system}".default
  ];
}
