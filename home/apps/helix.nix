{ pkgs, config, ... }:
{
  # Helix code editor
  home.file = {
    "/home/udontur/.config/helix/config.toml" = {
      text = ''
        theme = "sonokai-default"

        [editor]
        mouse = false
        middle-click-paste=false
        line-number="relative"

        [editor.cursor-shape]
        normal = "block"
        insert = "bar"
      '';
    };
  };
  home.file = {
    "/home/udontur/.config/helix/languages.toml" = {
      source = ../../assets/helix/languages.toml;
    };
  };
  home.file = {
    "/home/udontur/.config/helix/themes/sonokai-default.toml" = {
      source = ../../assets/helix/sonokai-default.toml;
    };
  };
}
