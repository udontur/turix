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
    emote
    # copyq
    swayosd
    swaynotificationcenter
    hyprpicker
    waybar
    wofi

    # Utility
    yt-dlp
    git
    hyprshot
    rclone
    ffmpeg
    bat
    docker
  ];
}
