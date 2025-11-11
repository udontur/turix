{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Enable Nix Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Enable home-manager
  environment.systemPackages = with pkgs; [
    home-manager
  ];

  # Bootloader
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
  };
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;
  networking.hostName = "earth";
  
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

  # XServer
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
  };

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

  # Graphics
  hardware.graphics.enable = true;

  # NixOS system configuration
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
