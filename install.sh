#!/usr/bin/env fish

# This script is intended for use by devcontainers

# --adopt + restore forces the dotfiles from this repo to override any existing ones in the devcontainer
stow --adopt -v -t ~ .
git restore .
