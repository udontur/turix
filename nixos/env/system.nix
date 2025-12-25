{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{

  # This is to fix frequent Bluetooth audio dropouts.
  boot.extraModprobeConfig = ''
    # Keep Bluetooth coexistence disabled for better BT audio stability
    options iwlwifi bt_coex_active=0

    # Enable software crypto (helps BT coexistence sometimes)
    options iwlwifi swcrypto=1

    # Disable power saving on Wi-Fi module to reduce radio state changes that might disrupt BT
    options iwlwifi power_save=0

    # Disable Unscheduled Automatic Power Save Delivery (U-APSD) to improve BT audio stability
    options iwlwifi uapsd_disable=1

    # Disable D0i3 power state to avoid problematic power transitions
    options iwlwifi d0i3_disable=1

    # Set power scheme for performance (iwlmvm)
    options iwlmvm power_scheme=1
  '';

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        ControllerMode = "bredr"; # Fix frequent Bluetooth audio dropouts
        Experimental = true;
        FastConnectable = true;
      };
      Policy = {
        AutoEnable = true;
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
