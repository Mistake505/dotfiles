function rebuild-upgrade
    sudo nixos-rebuild switch --flake ~/nix-config#$(hostname) --upgrade
end
