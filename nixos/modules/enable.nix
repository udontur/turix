{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };
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
}
