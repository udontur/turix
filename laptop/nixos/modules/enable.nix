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
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
    HandleSuspendKey=ignore
    HandleHibernateKey=ignore
  '';

}
