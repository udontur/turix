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
    # chromium
    osu-lazer

    # Utility apps and tools
    git
    neofetch
    btop-rocm
    zsh
    inputs.ossdmk.packages."${system}".default
    ollama-rocm
    zsh-powerlevel10k

    # Developer
    inputs.wretch.packages."${system}".default
    inputs.judgel.packages."${system}".default

    # Temporary
    qdirstat
    gnome-system-monitor

  ];
}
