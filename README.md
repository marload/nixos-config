# nixos-config

### Install xcode

```bash
xcode-select --install
```

### General

```bash
git clone https://github.com/marload/nixos-config ~/.config/nixos-config
```

### Install Nix

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### Update and Build

```bash
nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update
export NIXPKGS_ALLOW_UNFREE=1
export FLAKE="Marloads-MBA"
export SYSTEM="darwinConfigurations.$FLAKE.system"
nix --experimental-features 'nix-command flakes' build .#$SYSTEM --impure $@
```

```

```bash
sudo mkdir -p /opt/homebrew/Library/Taps/homebrew/ && sudo /bin/chmod +a "$USER allow list,add_file,search,delete,add_subdirectory,delete_child,readattr,writeattr,readextattr,writeextattr,readsecurity,writesecurity,chown" /opt/homebrew/Library/Taps/homebrew/
```

### Rebuild

```bash
./result/sw/bin/darwin-rebuild switch --flake .#$FLAKE --impure $@
```