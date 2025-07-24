{
  inputs,
  config,
  pkgs,
  libs,  
  ...
}:
{
  # Enable swap
  swapDevices = [{
    device = "/swapfile"
    size = 32 * 1000;
  }];
}
