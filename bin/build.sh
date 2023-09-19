#!/bin/sh -e

VERSION=1.0

GREEN='\033[1;32m'
RED='\033[1;31m'
CLEAR='\033[0m'

FLAKE=$(hostname -s)
SYSTEM="darwinConfigurations.$FLAKE.system"

export NIXPKGS_ALLOW_UNFREE=1

nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# Navigate to the directory of this script
cd $(dirname $(readlink -f $0))
cd ..

echo "${GREEN}Requesting sudo to set homebrew tap permissions...${CLEAR}"

# This is reset by nix-homebrew, we need write permission to this dir to manage homebrew taps
sudo mkdir -p /opt/homebrew/Library
sudo /bin/chmod +a "$USER allow list,add_file,search,delete,add_subdirectory,delete_child,readattr,writeattr,readextattr,writeextattr,readsecurity,writesecurity,chown" /opt/homebrew/Library

echo "${GREEN}Starting build...${CLEAR}"

nix --experimental-features 'nix-command flakes' build .#$SYSTEM $@ --impure

echo "${GREEN}Switching to new generation...${CLEAR}"
./result/sw/bin/darwin-rebuild switch --flake .#$FLAKE $@ --impure

echo "${GREEN}Cleaning up...${CLEAR}"
unlink ./result

echo "${GREEN}Done${CLEAR}"