{ pkgs, config, ... }:
{
  # Helix code editor
  home.file = {
    "/home/udontur/.config/helix/config.toml" = {
      text = ''
        theme = "themeFile"

        [editor]
        mouse = false
        middle-click-paste=false
        line-number="relative"

        [editor.cursor-shape]
        normal = "block"
        insert = "bar"

        [editor.auto-save]
        focus-lost = true
      '';
    };
  };
  home.file = {
    "/home/udontur/.config/helix/languages.toml" = {
      source = ./languages.toml;
    };
  };
  home.file = {
    "/home/udontur/.config/helix/themes/themeFile.toml" = {
      source = ./themeFile.toml;
    };
  };
  home.file = {
    "/home/udontur/.config/helix/clang-format.conf" = {
      text = ''
        BasedOnStyle: Google
        IndentWidth: 4
        ColumnLimit: 500
      '';
    };
  };
}
