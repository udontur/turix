{pkgs, config, ...}:
{
    programs.kitty={
        enable=true;
        extraConfig=''
            background #161718
            foreground #ebebeb
            font_family jetbrains mono
            font_size 14.0
            confirm_os_window_close 0
        '';
    };
}