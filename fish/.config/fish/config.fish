# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end

function fish_greeting
    fastfetch
end

set fish_function_path ~/.config/fish/functions

if set -q ZELLIJ
else
    zellij
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

zoxide init fish | source
