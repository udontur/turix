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
    hieroglyphic
    papers
    slack
    notion-app-enhanced
    proton-pass
    protonvpn-gui
    todoist-electron
    figma-linux
    gnome-font-viewer
    obs-studio
    brave
    vesktop
    loupe

    # Terminal apps
    neofetch
    helix
    btop-rocm
    yazi
    gh
    gdu
    inputs.gittype.packages."${system}".default
    inputs.umpire.packages."${system}".default
    inputs.osc.packages."${system}".default
  ];
}

