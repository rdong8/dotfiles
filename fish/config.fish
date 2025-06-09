eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if status is-interactive
    and test "$TERM_PROGRAM" != vscode
    # Commands to run in interactive sessions can go here
    eval (zellij setup --generate-auto-start fish | string collect)
end
