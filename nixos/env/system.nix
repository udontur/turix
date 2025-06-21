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

  # GDM
  services.displayManager = {
    gdm = {
      enable = true;
      wayland = true;
    };
    autoLogin={
      enable = true;
      user = "udontur";
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
