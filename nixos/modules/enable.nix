{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  services.xserver.excludePackages = [ pkgs.xterm ];
  # Enable Nix Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  environment.systemPackages = with pkgs; [
    home-manager
  ];
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}
