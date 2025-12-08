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
    brave
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
