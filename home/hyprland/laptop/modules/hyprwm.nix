{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  home.file = {
    "/home/udontur/.config/hypr/modules/hyprwm.conf" = {
      text=''
        # Window Rule
        windowrulev2 = size 1300 750, title:btop
        windowrulev2 = float, title:btop

        windowrulev2 = suppressevent maximize, class:.*
        windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0

        general {
            gaps_in = 0
            gaps_out = 0
            border_size = 1
            col.active_border = rgb(00f260)
            col.inactive_border = rgb(707070)
            resize_on_border = false
            allow_tearing = false
            layout = dwindle
        }
        decoration {
            rounding = 0
            active_opacity = 1
            inactive_opacity = 1
            screen_shader = "/home/udontur/.config/hypr/modules/nightLight.frag"
            blur {
                enabled = false
            }
            shadow{
                enabled = false
            }
        }
        animations {
            enabled = false
        }
      
        gestures{
          workspace_swipe=false
        }
        input {
            kb_layout = us
            follow_mouse = 1
            kb_options = caps:escape
            sensitivity = 0
            touchpad{
              natural_scroll=true
              scroll_factor=0.15
            }
        }
      '';
    };
  };
  home.file = {
    "/home/udontur/.config/hypr/modules/nightLight.frag" = {
      text = ''
        varying vec2 v_texcoord;
        uniform sampler2D tex;
        void main() {
            vec4 pixColor = texture2D(tex, v_texcoord);
            pixColor[2] *= 0.8;
            gl_FragColor = pixColor;
        }
      '';
    };
  };
}
