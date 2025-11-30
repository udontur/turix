{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    zsh-powerlevel10k
    meslo-lgs-nf
    zsh-syntax-highlighting
    zsh-autocomplete
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = "source ~/.p10k.zsh";
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];
    shellAliases = {
      reb = "./rebuild";
      youbetter = "sudo";
      ga = "git add .";
      gc = "git commit -m";
      gsync = "git push origin main";
      gpush = "git push origin";
      cat = "bat";
      ff = "fastfetch";
      start-venv = "source .venv/bin/activate";
    };
    history.size = 10000;
  };
}
