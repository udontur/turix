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
    vscode
    # firefox
    inputs.zen-browser.packages."${system}".default # zen
    nautilus
    wofi
    obsidian
    #chromium
    easyeffects # eliminate?
    rhythmbox # eliminate?
    #easytag
    #pdfarranger #removable (maybe make an online tool set)

    # CLI apps and tools
    neofetch
    btop
    yt-dlp
    zsh

    # Utility apps and tools
    git
    gcc
    gnumake
    gtk3
    brightnessctl
    lshw
    dig
    dhcpcd
    zsh-powerlevel10k
    zsh-syntax-highlighting
    zsh-autocomplete
    hyprpolkitagent
    nixfmt-rfc-style
    btop-rocm

    # Hyprland apps and tools
    # hyprlock
    hyprpaper
    swayosd
    swaynotificationcenter
    hyprpicker
    hyprland
    hyprcursor
    hyprshot
    hyprnome
    xdg-desktop-portal-hyprland

    # NixOS
    home-manager

    # Resource packs
    noto-fonts-cjk-sans
    bibata-cursors
    adwaita-icon-theme
    gnome-themes-extra

  ];
}
