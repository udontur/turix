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
      editor.fontFamily = "Recursive Mono Casual Static";
      editor.fontLigatures="'dlig', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'ss09', 'ss11', 'titl'";
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
      C_Cpp.clang_format_fallbackStyle = "{ BasedOnStyle: Google, IndentWidth: 4, TabWidth: 4}";
      editor.lineNumbers= "relative";
      
    };
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-vscode.cpptools
      ritwickdey.liveserver
      formulahendry.code-runner
      ms-vscode.makefile-tools
      pkief.material-icon-theme
      zhuangtongfa.material-theme
      jnoortheen.nix-ide
      ms-vscode.cmake-tools
      rust-lang.rust-analyzer
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
