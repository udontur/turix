{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Search for packages: https://search.nixos.org/
  # Search for options: https://search.nixos.org/options?channel=24.11&size=50&sort=relevance&type=packages
  environment.systemPackages = with pkgs; [
    
    # GUI apps
    kitty
    inputs.zen-browser.packages."${system}".beta
    nautilus
    # vscode (moved to home manager)
    wofi
    easyeffects
    obs-studio

    # Terminal apps
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

    # Zsh
    zsh
    # zsh-powerlevel10k
    
    # Deps
    libnotify

    # Temporary
    # qdirstat
    gnome-system-monitor
    # chromium
    pdfarranger
  ];
}
