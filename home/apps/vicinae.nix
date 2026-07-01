{
  pkgs,
  config,
  vicinae,
  vicinae-extensions,
  inputs,
  ...
}:
{
  #  `services.vicinae.systemd.environment' `programs.vicinae.systemd.environment'.
  #  `services.vicinae.systemd.autoStart' `programs.vicinae.systemd.autoStart'.
  #  `services.vicinae.systemd.enable' `programs.vicinae.systemd.enable'.
  #  `services.vicinae.settings' `programs.vicinae.settings'.
  #  `services.vicinae.themes' `programs.vicinae.themes'.
  #  `services.vicinae.extensions' `programs.vicinae.extensions'.
  #  `services.vicinae.enable' `programs.vicinae.enable'.
  imports = [
    inputs.vicinae.homeManagerModules.default
  ];
  programs.vicinae = {
    enable = true;
    systemd = {
      enable = true;
      autoStart = true; # default: false
      environment = {
        USE_LAYER_SHELL = 1;
      };
    };
    settings = {
      close_on_focus_loss = true;
      consider_preedit = true;
      pop_to_root_on_close = true;
      favicon_service = "twenty";
      search_files_in_root = true;
      font = {
        normal = {
          size = 12;
          family = "Inter";
        };
      };
    };
    extensions = with inputs.vicinae-extensions.packages.${pkgs.stdenv.hostPlatform.system}; [
      # bluetooth # it's broken
      nix
      power-profile
      color-converter
      fuzzy-files
      html-symbol-finder
      # Extension names can be found in the link below, it's just the folder names
    ];
  };
}
