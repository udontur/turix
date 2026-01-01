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
  ];
}
