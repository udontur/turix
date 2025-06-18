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
    inputs.ossdmk.packages."${system}".default

    # Utility
    git
    inpuits.hyprshot.pacakges."${system}".default
    swayosd
    swaynotificationcenter

    # Others
    libnotify
    zsh

    # Temporary
    # chromium
  ];
}
