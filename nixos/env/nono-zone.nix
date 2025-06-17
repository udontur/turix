{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Bootloader
  boot.loader.grub = {
    enable = true;
    useOSProber = true;
    efiSupport = true;
    device = "nodev";
  };
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;

  # Time and Language
  time.timeZone = "Asia/Hong_Kong";
  i18n.defaultLocale = "en_HK.UTF-8";

  # Audio
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Garbage
  services.gvfs.enable = true;

  # Dconf
  programs.dconf.enable = true;

  # OpenGL
  hardware.opengl.enable = true;

  # NixOS system configuration
  nixpkgs.config.allowUnfree = true;
  # [IMPORTANT] What if I install 25.05 and use nixos unstable?
  system.stateVersion = "24.11";
  # END
}
