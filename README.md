# Neovim Configuration

This is my Neovim Configuration written completely in lua.
Neovim > 0.8.0 is preferred. Few plugins mightn't work otherwise.

To use this configuration, first clone this repository as _nvim_ inside _.config_ directory.

```clone the repository
rm -rf ~/.config/nvim/
git clone https://github.com/abhiyandhakal/nvim-config ~/.config/nvim
```

This configuration uses Packer as a plugin manager. So, first install packer, then type `:PackerInstall` after opening neovim.

Then locate `coc.nvim` directory which is generally inside `~/.local/share/nvim/site/pack/packer/start/`. Then install the dependencies using yarn.

```setup coc.nvim
cd ~/.local/share/nvim/site/pack/packer/start/coc.nvim
yarn
```
