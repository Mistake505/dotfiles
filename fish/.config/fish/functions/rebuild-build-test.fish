function rebuild-build-test
    sudo nixos-rebuild build --flake ~/nix-config#(hostname)
end
