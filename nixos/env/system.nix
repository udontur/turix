{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{

  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        Experimental = true;
        FastConnectable = true;
      };
      Policy = {
        AutoEnable = true;
      };
    };
  };
  
  # Fix dynamically linked libraries
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    # from nixpkgs
    
  ];

  # Nix Helper
  programs.nh.enable = true;

  # Garbage collector
  programs.nh = {
    clean.enable = true;
    clean.extraArgs = "--keep 3";
  };

  # Store optimization on every build
  # nix-store --optimise
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

  # Disable the power button because my friends keeps turning it off lol
  services.logind={
    powerKey="ignore";
    powerKeyLongPress="ignore";
    suspendKey="ignore";
    suspendKeyLongPress="ignore";
    hibernateKey="ignore";
    hibernateKeyLongPress="ignore";
  };

}
