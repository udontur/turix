{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  

  # Garbage Collection NixOS Generations
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
  # nix-collect-garbage --delete-older-than 30d

  # Store optimization on every build
  nix.settings.auto-optimise-store = true;
  # nix-store --optimise
  

  # User setup
  users.users.udontur = {
    isNormalUser = true;
    description = "Hadrian";
    # Password is set in the gnome graphical interface.
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
  };

  networking.hostName = "earth"; # Define your hostname.

  

  # X11 (for GDM)
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # GDM
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;

  
}
