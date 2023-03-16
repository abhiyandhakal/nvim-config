# Neovim Configuration

This is my Neovim Configuration written completely in lua.
Neovim > 0.8.0 is preferred. Few plugins mightn't work otherwise.

To use this configuration, first clone this repository as _nvim_ inside _.config_ directory.

```clone the repository
rm -rf ~/.config/nvim/
git clone https://github.com/abhiyandhakal/nvim-config ~/.config/nvim
```

This configuration uses Packer as a plugin manager. So, first install packer, then type `:PackerInstall` after opening neovim.

<hr>

Neovim's builtin lsp has to be manually configured for now.
