{ pkgs, config, ... }:

{
  home.file = {
    "/home/udontur/.config/battery/runner.sh" = {
      text=''
        while true; do
            battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

            if [[ "$battery_level" -ge 70 && "$battery_level" -gt 67]]; then
                notify-send "Just a heads up" "Battery is at 70%"
            elif [[ "$battery_level" -le 50 && "$battery_level" -gt 47 ]]; then
                notify-send "Battery is half full" "Battery is at 50%, please plug it in. "
            elif [[ "$battery_level" -le 30 && "$battery_level" -gt 27 ]]; then
                notify-send "就嚟冇電" "Battery is at 30%, you need to charge it now!"
            elif [[ "$battery_level" -le 20 && "$battery_level" -gt 17 ]]; then
                notify-send "Its suffering... 冇電喇" "Battery is at 20%, plug it in right now!"
            elif [[ "$battery_level" -le 10 ]]; then
                notify-send "真係冇電喇!!!" "得返10%"
            fi

            sleep 300
        done
      '';
      executable = true;
    };
  };
}
