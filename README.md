# nixos-config

### Install xcode

```bash
xcode-select --install
```

### Cloning nixos-config repository

```bash
git clone https://github.com/marload/nixos-config ~/.config/nixos-config
```

### Install Nix

```bash
sh <(curl -L https://nixos.org/nix/install)
```

### Update nix channel

```bash
nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

### Build

```bash
nix --extra-experimental-features "nix-command flakes" run nix-darwin -- switch --flake ~/.config/nixos-config --impure
darwin-rebuild switch --flake ~/.config/nixos-config --impure
```