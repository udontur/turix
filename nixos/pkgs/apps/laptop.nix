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
    nautilus
    inputs.zen-browser.packages."${system}".beta
    obsidian
    
    # Terminal
    neofetch
    btop-rocm
    yazi
    gdu
    inputs.ossdmk."${system}".default

    # Utility
    git
    inpuits.hyprshot.pacakges."${system}".default
    simle
    copyq

    # Others
    libnotify
    zsh

    # Utils and Terminal apps
    git
    neofetch
    btop
    gdu
    inputs.ossdmk."${system}".default 
    inputs.hyprshot.packages."${system}".default

    # Temporary
    # chromium
  ];
}
