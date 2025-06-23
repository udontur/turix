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
    
    # Terminal 
    neofetch
    btop-rocm
    yazi
    ollama-rocm
    gdu
    inputs.ossdmk.packages."${system}".default

    # Utility 
    git
    inputs.hyprshot.packages."${system}".default
    smile
    copyq
    waybar
    swayosd
    swaynotificationcenter

    # Others
    libnotify
    zsh

    # Temporary
    # gnome-system-monitor
    # chromium
    # pdfarranger
  ];
}
