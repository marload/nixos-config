# nixos-config

### Install xcode

```bash
xcode-select --install
```

### General

```bash
git clone https://github.com/marload/nixos-config ~/.config/nixos-config
sudo mkdir -p /opt/homebrew/Library/Taps/homebrew/ && sudo /bin/chmod +a "$USER allow list,add_file,search,delete,add_subdirectory,delete_child,readattr,writeattr,readextattr,writeextattr,readsecurity,writesecurity,chown" /opt/homebrew/Library/Taps/homebrew/
sudo scutil --set ComputerName "Marloads-MBP"
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
export NIXPKGS_ALLOW_UNFREE=1
nix --extra-experimental-features "nix-command flakes" run nix-darwin -- switch --flake ~/.config/nixos-config --impure
```

### Rebuild

```bash
darwin-rebuild switch --flake ~/.config/nixos-config --impure
```