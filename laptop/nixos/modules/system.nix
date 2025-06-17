{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  programs.dconf.enable = true;

  # Enable hyprland

  # OpenGL
  hardware = {
    graphics.enable = true;
  };

  # Garbage Collection NixOS Generations
  # INTETIONAL CONFIG BREAKER BECAUASE THE GARTBAGE COLLECTION CODE IS NOT FISHED
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
  
  # Battery Saver
  services.tlp.enable = true;

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

  # Touchpad
  services.libinput.enable = true;

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

  # Builtin Firewall

  # MISC???
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  #programs.mtr.enable = true;
  #programs.gnupg.agent = {
  #  enable = true;
  #  enableSSHSupport = true;
  #};

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  #services.openssh.enable = true;

  # Open ports in the firewall.
  #networking.firewall.allowedTCPPorts = [ ... ];
  #networking.firewall.allowedUDPPorts = [ ... ];

  # Or disable the firewall altogether.
  #networking.firewall.enable = false;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

}
