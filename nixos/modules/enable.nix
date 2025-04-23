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
    xwayland.enable = true;
  };

  # Sorry, xterm
  services.xserver.excludePackages = [ pkgs.xterm ];
  
  # Enable Nix Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Enable home-manager
  environment.systemPackages = with pkgs; [
    home-manager
  ];

  # zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  
  # Garbage
  services.gvfs.enable = true;
}
