{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  # Fix dynamically linked libraries
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    # from nixpkgs

  ];

  # Virtual Machine
  virtualisation.vmware.host.enable = true;

  # For VSCode sign in and sync
  services.gnome.gnome-keyring.enable = true;

  # Hyprland
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
  };

  # Remove default pacakges
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.printing = {
    enable = true;
    drivers = with pkgs; [
      cups-filters
      cups-browsed
    ];
  };

  # Nix Helper
  programs.nh.enable = true;

  # ZSH
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

  # Bluetooth deps
  environment.systemPackages = with pkgs; [
    bluetui
    bluez
  ];

  # Remove printer app
  # environment.extraSetup = ''
    # rm -f $out/share/applications/cups.desktop
  # '';
}
