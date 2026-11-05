function rebuild-upgrade
    nix flake update ~/.nix-config
    and sudo nixos-rebuild switch --flake ~/nix-config#(hostname) --upgrade $argb
end
