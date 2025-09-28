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
    # stirling-pdf
    cobang
    hieroglyphic
    impression
    texstudio
        
    # Terminal 
    neofetch
    btop-rocm
    yazi
    gdu
    inputs.umpire.packages."${system}".default
    bat
    zsh
    inputs.osc.packages."${system}".default
    bluetui
  ];
}

