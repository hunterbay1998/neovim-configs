# Neovim (Arch) – minimal working setup

## Required packages
sudo pacman -S --needed \
  neovim \
  git \
  base-devel \
  tree-sitter \
  tree-sitter-cli \
  nodejs npm

## Neovim init.lua
- Uses lazy.nvim
- Uses nvim-treesitter
- Important: module name is `nvim-treesitter.config` (not configs)

## After install (inside nvim)
:Lazy sync
:TSUpdate
:checkhealth nvim-treesitter

