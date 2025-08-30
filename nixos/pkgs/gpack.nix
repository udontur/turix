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
    inputs.zen-browser.packages."${system}".twilight
    nautilus
    wofi
    obsidian
    helix
    gnome-calculator
        
    # Terminal 
    neofetch
    btop-rocm
    yazi
    gdu
    inputs.umpire.packages."${system}".default
    bat
    zsh
    inputs.osc.packages."${system}".default
  ];
}

