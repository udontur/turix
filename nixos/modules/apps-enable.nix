{ inputs, config, pkgs, libs, ... }:

{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestions.enable = true;
        syntaxHighlighting.enable = true;
    };
}