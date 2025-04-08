{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    vscode
    nixfmt-rfc-style
  ];
  programs.vscode = {
    enable = true;
    enableExtensionUpdateCheck = false;
    enableUpdateCheck = false;
    userSettings = {
      editor.fontFamily = "'JetBrains Mono', Monoscape";
      explorer.confirmDelete = false;
      explorer.confirmPasteNative = false;
      git.autofetch = true;
      explorer.confirmDragAndDrop = false;
      workbench.iconTheme = "material-icon-theme";
      git.confirmSync = false;
      extensions.ignoreRecommendations = true;
      files.autoSave = "afterDelay";
      files.autoSaveDelay = 0;
      workbench.preferredLightColorTheme = "Default Dark Modern";
      workbench.preferredHighContrastLightColorTheme = "Default Dark Modern";
      window.titleBarStyle = "custom";
      explorer.compactFolders = false;
      scm.compactFolders = false;
      wakatime.apiKey = "waka_31ada677-32d8-4f3d-9966-e7b12b7a6468";
      wakatime.apiUrl = "https://api.wakatime.com/api/v1/";
      editor.minimap.enabled = false;
      update.mode = "none";
      user.colorTheme = "One Dark Pro Darker";
      workbench.colorTheme = "One Dark Pro Darker";
      workbench.statusBar.visible = false;
      powermode.combo.location = "off";
      powermode.combo.counterEnabled = "hide";
      editor.cursorBlinking = "expand";
      editor.cursorStyle = "block-outline";
      editor.cursorSmoothCaretAnimation = "on";
      git.enableSmartCommit = true;
      editor.detectIndentation = false;
      editor.tabSize = 4;
      editor.insertSpaces = true;
    };
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-vscode.cpptools
      ritwickdey.liveserver
      wakatime.vscode-wakatime
      formulahendry.code-runner
      ms-vscode.makefile-tools
      pkief.material-icon-theme
      zhuangtongfa.material-theme
      jnoortheen.nix-ide
    ];
    keybindings = [
      {
        key = "ctrl+shift+w";
        command = "editor.emmet.action.wrapWithAbbreviation";
      }
      {
        key = "ctrl+w";
        command = "-workbench.action.terminal.killEditor";
        when = "terminalEditorFocus && terminalFocus && terminalHasBeenCreated || terminalEditorFocus && terminalFocus && terminalProcessSupported";
      }
      {
        key = "ctrl+w";
        command = "-workbench.action.closeActiveEditor";
      }
      {
        key = "ctrl+w";
        command = "-workbench.action.closeGroup";
        when = "activeEditorGroupEmpty && multipleEditorGroups";
      }
      {
        key = "ctrl+shift+w";
        command = "-workbench.action.closeWindow";
      }
      {
        key = "ctrl+w";
        command = "workbench.action.closeActiveEditor";
      }
    ];
  };
}
