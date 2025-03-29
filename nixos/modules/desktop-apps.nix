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
    # vscode MUST BE DECLARED IN HOME MANAGER
    inputs.zen-browser.packages."${system}".default # zen
    nautilus
    wofi
    obsidian
    #chromium # For backup
    easyeffects # Shortcut for 
    rhythmbox # eliminate? yes

    # zsh rice it asap please
    zsh
    
    # Utility apps and tools
    git
    neofetch
    btop
    gcc
    gnumake
    bun
    nodejs_23
  ];
}
