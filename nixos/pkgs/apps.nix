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
    hieroglyphic
    texstudio
    gnome-font-viewer
    obs-studio
    brave
    loupe
        
    # Terminal apps 
    neofetch
    helix
    btop-rocm
    yazi
    gdu
    inputs.gittype.packages."${system}".default
    inputs.umpire.packages."${system}".default
    inputs.osc.packages."${system}".default
  ];
}

