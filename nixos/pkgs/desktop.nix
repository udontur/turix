{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Desktop apps
  environment.systemPackages = with pkgs; [
    # GUI apps
    kitty
    ghostty
    inputs.zen-browser.packages."${system}".beta
    nautilus
    # vscode (moved to home manager)
    wofi
    easyeffects
    obsidian
    #neovim
    
    
    # Terminal apps
    helix
    neofetch
    btop-rocm
    yazi
    ollama-rocm
    gdu
    inputs.ossdmk.packages."${system}".default

    # Utility apps
    git
    inputs.hyprshot.packages."${system}".default
    smile
    copyq

    # Deps
    libnotify
    zsh

    # 
    # Temporary
    # gnome-system-monitor
    # chromium
    # pdfarranger
  ];
}
