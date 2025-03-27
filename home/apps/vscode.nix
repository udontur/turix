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
      wakatime.apiKey = "https://waka.hackclub.com/api271b2820-2527-4b10-8a0b-8a02dac37f64";
      wakatime.apiUrl = "https://waka.hackclub.com/api";
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
        key = "ctrl+shift+b";
        command = "workbench.action.toggleActivityBarVisibility";
      }
      {
        key = "ctrl+shift+b";
        command = "-workbench.action.tasks.build";
        when = "taskCommandsRegistered";
      }
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
