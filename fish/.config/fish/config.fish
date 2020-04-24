begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/lorenzo/Code/gb-studio/node_modules/tabtab/.completions/electron-forge.fish ]; and . /home/lorenzo/Code/gb-studio/node_modules/tabtab/.completions/electron-forge.fish
