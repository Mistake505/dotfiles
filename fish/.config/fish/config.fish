if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    fetch
end

alias rebuild "sudo nixos-rebuild switch"
alias rebuild-upgrade "sudo nixos-rebuild switch --upgrade"
alias nixedit "nvim /etc/nixos/"
alias editnix "nvim /etc/nixos/"

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

zoxide init fish | source
