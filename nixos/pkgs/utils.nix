{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # Utility
    git
    swayosd
    swaynotificationcenter
    acpi
    hyprpicker
    libnotify
    emote
    copyq
    waybar
    yt-dlp
    hyprshot
  ];
}
