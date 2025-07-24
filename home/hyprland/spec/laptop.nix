{
  inputs,
  config,
  pkgs,
  libs,
  ...
}:
{
  # Laptop
  home.file = {
    "/home/udontur/.config/hypr/modules/spec.conf" = {
      text=''
        # Laptop lock switch     
        bindl = ,switch:Lid Switch, exec, hyprlock
        bind = SUPER, L, exec, hyprlock
        exec-once = hyprlock

        # Laptop battery
        exec-once = /home/udontur/.config/battery/runner.sh    

        # Monitor
        monitor=eDP-1, 1920x1200@60, 0x0, 1.25
        decoration {
            screen_shader = /home/udontur/.config/hypr/modules/nightLight.glsl
        }

        # Trackpad
        device{
            name=syna0680:00-06cb:ce44-touchpad
            sensitivity=-0.2
        }
        gestures{
          workspace_swipe=false
        }
        input {
            touchpad{
              natural_scroll=true
              scroll_factor=0.15
            }
        }
      '';
    };
  };
  home.file = {
    "/home/udontur/.config/hypr/modules/nightLight.glsl" = {
      text = ''
        precision mediump float;
        varying vec2 v_texcoord;
        uniform sampler2D tex;

        void main() {

            vec4 pixColor = texture2D(tex, v_texcoord);

            // green
            pixColor[1] *= 0.75;

            // blue
            pixColor[2] *= 0.55;

            gl_FragColor = pixColor;
        }
      '';
    };
  };
}
