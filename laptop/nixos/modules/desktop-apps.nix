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
    nautilus
    inputs.zen-browser.packages."${system}".beta
    
    # Utils and Terminal apps
    git
    neofetch
    btop
    gdu
    # inputs.ossdmk."${system}".default # BRING IT BACK!!!
    inputs.hyprshot.packages."${system}".default
    inputs.wakatime-ls.packages.${system}.default
    yazi
    # neovim
    helix
    # Temporary
    # chromium
    wakatime-cli
  ];
}
