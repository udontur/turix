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
    easyeffects
    obsidian
    helix
    vscode
    obs-studio
        
    # Terminal 
    neofetch
    btop-rocm
    yazi
    gdu
    inputs.ossdmk.packages."${system}".default
    inputs.umpire.packages."${system}".default
    bat
    zsh

    # Temporary
    gnome-system-monitor
    # chromium
    # pdfarranger
  ];
}
