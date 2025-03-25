{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  services.easyeffects = {
    enable = true;
    preset = "bass"; # uhh, need to manually load it???
  };
}
