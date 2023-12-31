#!/bin/sh -e

VERSION=1.0

GREEN='\033[1;32m'
RED='\033[1;31m'
CLEAR='\033[0m'

FLAKE=$(hostname -s)
export NIXPKGS_ALLOW_UNFREE=1

echo "${GREEN}Switching to new generation...${CLEAR}"
./result/sw/bin/darwin-rebuild switch --flake .#$FLAKE $@ --impure
echo "${GREEN}Swtich done${CLEAR}"