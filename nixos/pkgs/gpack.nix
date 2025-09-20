{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Apps
    kitty
    inputs.zen-browser.packages."${system}".beta
    nautilus
    wofi
    obsidian
    helix
    gnome-calculator
    loupe
    pdfarranger
    vscode
    obs-studio
    stirling-pdf
    # gnome-decoder
    cobang
    dialect
    eyedropper
    # gnome-graphs
    labplot
    hieroglyphic
    impression
    wordbook
    texstudio
    texmaker
        
    # Terminal 
    neofetch
    btop-rocm
    yazi
    gdu
    inputs.umpire.packages."${system}".default
    bat
    zsh
    inputs.osc.packages."${system}".default
  ];
}

