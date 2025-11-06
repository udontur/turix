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
    hyprshot
    rclone
    ffmpeg
    bat
    docker
    upower
    asar
    tree
  ];
}
