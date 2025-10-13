{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    ffmpeg
    git
    swayosd
    swaynotificationcenter
    acpi
    hyprpicker
    bluez
    libnotify
    emote
    copyq
    waybar
    yt-dlp
    hyprshot
    rclone
  ];
}
