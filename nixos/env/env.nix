{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
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

  # Enable Nix Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Enable home-manager
  environment.systemPackages = with pkgs; [
    home-manager
  ];

  # ZSH
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

  # Remove printer app
  environment.extraSetup = ''
    rm -f $out/share/applications/cups.desktop
  '';
  
  # Environment Variables
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1"; 
  };


}
