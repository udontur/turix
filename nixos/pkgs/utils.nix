{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Utility apps
    easyeffects
    hyprpicker
    yt-dlp
    git
    rclone
    nmap
    ffmpeg
    bat
    docker
    upower
    asar
    tree
    # inputs.fix-python.packages.${pkgs.stdenv.hostPlatform.system}.default
    fd
    bootiso
    # sudo bootiso -d /dev/sda Zorin-OS-18-Core-64-bit-r3.iso
  ];
}
