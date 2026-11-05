function rebuild-upgrade
    nix flake update --flake ~/nix-config
    and sudo nixos-rebuild switch --flake ~/nix-config#(hostname) --upgrade $argv
end
