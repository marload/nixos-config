# nixos-config

```bash
xcode-select --install
sh <(curl -L https://nixos.org/nix/install)
```

```bash
nix --extra-experimental-features "nix-command flakes" run nix-darwin -- switch --flake ~/.config/nixos-config
darwin-rebuild switch --flake ~/.config/nixos-config
```