{ pkgs, config, ... }: 
                                                                          
{
    programs.vscode={
        enable=true;
        enableExtensionUpdateCheck=false;
        enableUpdateCheck=false;
        extensions=;
        userSettings={
            explorer.confirmDragAndDrop=false;
            explorer.confirmDelete=false;
            liveServer.settings.donotShowInfoMsg=true;
            files.autoSave=0;
            git.confirmSync=false;
            git.autofetch=true;
            git.enableSmartCommit=true;
            window.titleBarStyle="custom";
            terminal.integrated.enableMultiLinePasteWarning=false;
            liveServer.settings.donotVerifyTags=true;
            editor.cursorStyle="block-outline";
            editor.cursorBlinking="expand";
            editor.cursorSmoothCaretAnimation="on";
            workbench.iconTheme="material-icon-theme"
        };
        extensions=with pkgs.vscode-extension; [

        ];
        keybindings=[
            {
                key="ctrl+shift+b";
                command="workbench.action.toggleActivityBarVisibility";
            }
            {
                key="ctrl+shift+b";
                command="-workbench.action.tasks.build";
                when="taskCommandsRegistered";
            }
            {
                key="ctrl+shift+w";
                command="editor.emmet.action.wrapWithAbbreviation";
            }
            {
                key="ctrl+w";
                command="-workbench.action.terminal.killEditor";
                when="terminalEditorFocus && terminalFocus && terminalHasBeenCreated || terminalEditorFocus && terminalFocus && terminalProcessSupported";
            }
            {
                key="ctrl+w";
                command="-workbench.action.closeActiveEditor";
            }
            {
                key="ctrl+w";
                command="-workbench.action.closeGroup";
                when="activeEditorGroupEmpty && multipleEditorGroups";
            }
            {
                key="ctrl+shift+w";
                command="-workbench.action.closeWindow";
            }
            {
                key="ctrl+w";
                command="workbench.action.closeActiveEditor";
            }
        ];
    };
}
