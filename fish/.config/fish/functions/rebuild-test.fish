function rebuild-test
    sudo nixos-rebuild test --flake ~/nix-config#$(hostname)
end
