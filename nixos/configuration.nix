# UdonTur's NixOS (Hyprland) Configuration File 
# Exact system reproduction guide: https://github.com/udontur/nixos/README.md
# NixOS manual: https://nixos.org/manual/nixos/stable/

{ inputs, config, pkgs, libs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  # sudo nixos-rebuild switch --flake ~/nixos
  
  # ******NOTES******
  # Unstable for desktop (ZEN BROWSER WHEN)
  # Stable for Laptop (cuz I do not want to break it)
  # For laptop, use brave as the chromium core (fix the instant pop)
  # setup auto clear in NIxos
  # make a rebuid script
  # Need to add /usr/local/bin to the path variable (non conventional)
  # echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
  # source ~/.bashrc
  
  # Search package: $ nix search <PACKAGE NAME> or https://search.nixos.org/packages?channel=24.11&size=50&sort=relevance&type=packages&
  # Make sure to check the options: https://search.nixos.org/options?channel=24.11&size=50&sort=relevance&type=packages
  environment.systemPackages = with pkgs; [
    # GUI apps
    kitty
    vscode
    firefox
    nautilus  
    wofi  
    obsidian
    chromium
    easyeffects
    dconf-editor #delete when migrate to home-manager
    nwg-look #delete when migrate to home-manager
    rhythmbox
    easytag
    pdfarranger #removable (maybe make an online tool set)
    # Flatpak for Zen browser (do not use it first, wait for real release)
    # Flatpak version for the zen browser has bugs
    # Flake.nix (for now)
    # Need to wait for offical zen browser nixos release

    # CLI apps and tools
    neofetch
    btop
    yt-dlp
    zsh

    # Utility apps and tools
    git
    gcc
    gnumake
    gtk3
    brightnessctl
    lshw
    dig
    dhcpcd
    zsh-powerlevel10k
    zsh-syntax-highlighting
    zsh-autocomplete
	  hyprpolkitagent

    # Hyprland apps and tools
    hyprlock
    hyprpaper
    swayosd
    swaynotificationcenter
    hyprpicker
    hyprnome #may remove?
    hyprland
    hyprcursor
    hyprshot
    xdg-desktop-portal-hyprland
    
    # NixOS
    home-manager

    # Resource packs
    noto-fonts-cjk-sans
    bibata-cursors
    adwaita-icon-theme
  ];

  home-manager={
    extraSpecialArgs={inherit inputs;};
    users={
      "udontur"=import "/home/udontur/nixos/home/home.nix";
    };
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };

  services.flatpak.enable = true; #change to flakes later

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    jetbrains-mono
  ];

  # Enable firefox
  programs.firefox = {
    enable = true;
    preferences = {
    "widget.use-xdg-desktop-portal.file-picker" = 1;
    "widget.use-xdg-desktop-portal.mime-handler" = 1;
    };
  };

  # https://github.com/NixOS/nixpkgs/issues/207339
  programs.dconf.enable = true;

  # Enable hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  services.xserver.excludePackages = [ pkgs.xterm ];

  # Environment variables
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1"; #Hint electron apps to use wayland
  }; 

  # OpenGL
  hardware = {
    graphics.enable = true;
  }; 
  
  # Enable Nix Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Bootloader
	boot.loader.grub = {
    enable=true;
    useOSProber=true;
    efiSupport=true;
    device="nodev";
  };  
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.networkmanager.enable = true;
  networking.hostName = "nixos"; # Define your hostname.

  # Time and Language
  time.timeZone = "Asia/Hong_Kong";
  i18n.defaultLocale = "en_HK.UTF-8"; 

  # X11 (for SDDM)
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # SDDM
	services.displayManager.sddm.enable=true;
  services.displayManager.sddm.wayland.enable=true;
  # services.displayManager.sddm.theme="apple-sddm"; # Does not seem to work 
  
  # Touchpad
  services.libinput.enable = true;

  # User setup
  users.users.udontur = {
    isNormalUser = true;
    description = "Hadrian";
    # Password is set in the gnome graphical interface. 
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # NixOS system configuration
  nixpkgs.config.allowUnfree = true; #off?
  system.stateVersion = "24.11"; #unstable please

  # Printer
  services.printing.enable = true;

  # Audio
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  
  # Builtin Firewall
  networking.firewall.enable = true;

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
