{ pkgs, config, ... }:

{
  
  home.packages = with pkgs; [
    zsh-powerlevel10k
    meslo-lgs-nf
    zsh-syntax-highlighting
    zsh-autocomplete
  ];
  home.file."p10k/.p10k.zsh".text = builtins.readFile ./.p10k.zsh;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases={ #not working
      reb="./rebuild";
      youbetter="sudo";
      mkdir="mkdir -p";
      gsync="git push origin main";
    };
    history.size=10000;
  };
}
