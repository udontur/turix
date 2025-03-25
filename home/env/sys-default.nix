{
  pkgs,
  config,
  inputs,
  ...
}:
{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "text/html" = "inputs.zen-browser.packages.x86_64-linux.default";
      "x-scheme-handler/http" = "inputs.zen-browser.packages.x86_64-linux.default";
      "x-scheme-handler/https" = "inputs.zen-browser.packages.x86_64-linux.default";
      "x-scheme-handler/about" = "inputs.zen-browser.packages.x86_64-linux.default";
      "x-scheme-handler/unknown" = "inputs.zen-browser.packages.x86_64-linux.default";
    };
  };
}
