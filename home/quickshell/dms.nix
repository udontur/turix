{ pkgs, config, ... }:

{
  home.file = {
    "/home/udontur/.config/DankMaterialShell/settings.json" = {
        source = ./json/settings.json;
    };
    "/home/udontur/.config/DankMaterialShell/plugin_settings.json" = {
        source = ./json/plugin_settings.json;
    };
  };
}
