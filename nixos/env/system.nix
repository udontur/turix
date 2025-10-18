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
      Policy.AutoEnable = true;
    };
  };

  # Storage cleaner
  programs.nh = {
    clean.enable = true;
    clean.extraArgs = "--keep 3";
  };
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

  # Environment Variables
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1"; 
  };

}
