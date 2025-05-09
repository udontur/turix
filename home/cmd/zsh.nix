{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    zsh-powerlevel10k
    meslo-lgs-nf
    zsh-syntax-highlighting
    zsh-autocomplete
  ];
  # home.file."p10k/.p10k.zsh".text = builtins.readFile ./.p10k.zsh;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases={
      reb="./rebuild";
      youbetter="sudo";
      mkdir="mkdir -p";
      gadd="git add .";
      gcom="git commit -m ";
      gsync="git push origin main";
      reb-fix="sudo chown -R udontur:777 .";
      ai-start="ollama serve";
      ai="ollama run deepseek-r1:14b";
      ai-jailbreak="ollama run dolphin-mistral";
    };
    history.size=10000;
  };
}
