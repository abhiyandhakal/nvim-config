# Neovim Configuration

This is my Neovim Configuration written completely in lua.

## Requirements

1. [Neovim > 0.8.0](https://github.com/neovim/neovim)
2. [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) _Mononoki Nerd Font is advised_
3. Cool background (transparency is used.
   If you don't like it, you can remove it by removing the import from plugins-config/init.lua)

## Installation

To use this configuration, clone this repository as _nvim_ inside _.config_ directory.

```clone the repository
rm -rf ~/.config/nvim/
git clone https://github.com/abhiyandhakal/nvim-config ~/.config/nvim
```

<hr>

Then, plugins need to be installed. For that, neovim needs to be opened to install the plugins.
```open neovim
nvim
```
If the plugins don't get installed, then you can install them by typing command `:PackerSync`.

<hr>

To install language servers, you need to run `:Mason` and press `i` to install language servers as per your need.

Then you are good to go!
