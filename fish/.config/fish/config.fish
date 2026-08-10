if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    fetch
end

set -gx EDITOR nvim

alias rebuild "sudo nixos-rebuild switch"
alias rebuild-upgrade "sudo nixos-rebuild switch --upgrade"
alias nixedit "nvim /etc/nixos/"
alias editnix "nvim /etc/nixos/"
