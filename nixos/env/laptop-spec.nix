{
  inputs,
  config,
  pkgs,
  libs,  
}:
{
  # Battery Saver
  services.tlp.enable = true;
}
