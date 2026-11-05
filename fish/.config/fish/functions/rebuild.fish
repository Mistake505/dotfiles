function rebuild
    sudo nixos-rebuild switch --flake ~/nix-config#$(hostname) $argv
end
