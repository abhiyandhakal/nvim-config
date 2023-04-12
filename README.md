# Neovim Configuration

This is my Neovim Configuration written completely in lua.

## Requirements

1. [Neovim > 0.8.0](https://github.com/neovim/neovim)
2. [Packer.nvim](https://github.com/wbthomason/packer.nvim)
3. [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) _Mononoki Nerd Font is advised_
4. Cool background (transparency is used.
   If you don't like it, you can remove it by removing the import from plugins-config/init.lua)
5. Python3

## Installation

This neovim config uses [Packer.nvim](https://github.com/wbthomason/packer.nvim) as a plugin manager.
So, first install [Packer.nvim](https://github.com/wbthomason/packer.nvim).

<hr>

To use this configuration, clone this repository as _nvim_ inside _.config_ directory.

```clone the repository
rm -rf ~/.config/nvim/
git clone https://github.com/abhiyandhakal/nvim-config ~/.config/nvim
```

<hr>

Then, plugins need to be installed. For that, neovim needs to be opened to install the plugins.
```install plugins
nvim -c PackerSync
```
After installing the plugins, you need to run `:CHADdeps` to install the dependencies required by [CHADTree](https://github.com/ms-jpq/chadtree).

Then running neovim another time installs a few treesitter parsers.

<hr>

To install language servers, you need to run `:Mason` and press `i` to install language servers as per your need.

Then you are good to go!
