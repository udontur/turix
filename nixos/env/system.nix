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
  
  # Store optimization on every build
  nix.settings.auto-optimise-store = true;

  # User setup
  users.users.udontur = {
    isNormalUser = true;
    description = "Hadrian";
    # Password is set in the gnome graphical interface.
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  networking.hostName = "earth"; # Define your hostname.

  # XServer
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };

    # GDM
    displayManager = {
      gdm = {
        enable = true;
        wayland = true;
      };
      autoLogin={
        enable = true;
        user = "udontur";
      };
    };
  };

  services.logind={
    powerKey="ignore";
    powerKeyLongPress="ignore";
    suspendKey="ignore";
    suspendKeyLongPress="ignore";
    hibernateKey="ignore";
    hibernateKeyLongPress="ignore";
  };

}
