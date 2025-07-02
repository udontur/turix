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
    helix
	    
    # Terminal
    neofetch
    btop-rocm
    yazi
    gdu
    inputs.ossdmk.packages."${system}".default
    inputs.umpire.packages."${system}".default


    # Utility
    git
    inputs.hyprshot.packages."${system}".default
    swayosd
    swaynotificationcenter
    acpi
    
    # Others
    libnotify
    zsh

    # Temporary
    # chromium
  ];
}
