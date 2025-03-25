{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Search package: $ nix search <PACKAGE NAME> or https://search.nixos.org/packages?channel=24.11&size=50&sort=relevance&type=packages&
  # Make sure to check the options: https://search.nixos.org/options?channel=24.11&size=50&sort=relevance&type=packages
  environment.systemPackages = with pkgs; [
    # GUI apps
    kitty
    # vscode MUST BE DECLARED IN HOME MANAGER
    inputs.zen-browser.packages."${system}".default # zen
    nautilus
    wofi
    obsidian
    btop
    #chromium
    # easyeffects # eliminate?
    #rhythmbox # eliminate?
    #easytag
    #pdfarranger #removable (maybe make an online tool set)

    # zsh
    zsh
    zsh-powerlevel10k
    zsh-syntax-highlighting
    zsh-autocomplete

    # Utility apps and tools
    git
    neofetch
    yt-dlp
    gcc
    gnumake
    gtk3
    brightnessctl
    #lshw
    #dig
    #dhcpcd

    #By apps
    nixfmt-rfc-style
    btop-rocm

  ];
}
