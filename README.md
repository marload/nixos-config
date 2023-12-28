# nixos-config


## installation 

```bash
sudo mv /etc/nix/nix.conf /etc/nix/nix.conf.before-nix-darwin
chmod +x bin/build.sh && bin/build.sh
```

## set yabai

```bash
# create a new file for writing - visudo uses the vim editor by default.
# go read about this if you have no idea what is going on.

sudo visudo -f /private/etc/sudoers.d/yabai

# input the line below into the file you are editing.
#  replace <yabai> with the path to the yabai binary (output of: which yabai).
#  replace <user> with your username (output of: whoami). 
#  replace <hash> with the sha256 hash of the yabai binary (output of: shasum -a 256 $(which yabai)).
#   this hash must be updated manually after running brew upgrade.

<user> ALL=(root) NOPASSWD: sha256:<hash> <yabai> --load-sa
```

in recovery mode then reboot
```bash
csrutil enable --without fs --without debug --without nvram
```

run below command then reboot
``` bash
sudo nvram boot-args=-arm64e_preview_abi
```

run below command then reboot
```bash
yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
sudo yabai --load-sa
```

### set hammerspoon

activate manual
