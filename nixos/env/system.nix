{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Fix bluetooth instability
  boot.extraModprobeConfig = ''
    options iwlwifi bt_coex_active=0
    options iwlwifi swcrypto=1
    options iwlwifi power_save=0
    options iwlwifi uapsd_disable=1
    options iwlwifi d0i3_disable=1
    options iwlmvm power_scheme=1
  '';

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        ControllerMode = "bredr";
        Experimental = true;
        FastConnectable = true;
      };
      Policy = {
        AutoEnable = true;
      };
    };
  };

  # Grub theme
  boot.loader.grub = {
    theme = (
      pkgs.sleek-grub-theme.override {
        withBanner = "Grub Bootloader";
        withStyle = "dark";
      }
    );
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
    autoLogin = {
      enable = true;
      user = "udontur";
    };
  };

  # Disable the power button because my friends keeps turning it off lol
  services.logind.settings.Login = {
    powerKey = "ignore";
    powerKeyLongPress = "ignore";
    suspendKey = "ignore";
    suspendKeyLongPress = "ignore";
    hibernateKey = "ignore";
    hibernateKeyLongPress = "ignore";
  };

  # Battery and Power
  services.upower.enable = true;

  # Environment Variables
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

}
