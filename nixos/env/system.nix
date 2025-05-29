{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Dconf
  programs.dconf.enable = true;

  # OpenGL
  hardware.opengl.enable=true;

  # Garbage Collection NixOS Generations
  # nix.gc={
  #   automatic=true;
  #   dates="weekly";
  #   options="--max-freed ";
  # };

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
  networking.hostName = "earth"; # Define your hostname.
  networking.firewall.enable = true;

  # Time and Language
  time.timeZone = "Asia/Hong_Kong";
  i18n.defaultLocale = "en_HK.UTF-8";

  # X11 (for GDM)
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # GDM
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;

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

  # NixOS system configuration
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";

  # Printer
  services.printing.enable = true;

  # Audio
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
