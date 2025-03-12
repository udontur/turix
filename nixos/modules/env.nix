{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1"; # Hint electron apps to use wayland
  };
}
