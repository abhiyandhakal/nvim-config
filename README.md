# Neovim Configuration

## Requirements

1. Linux
2. Neovim of version greater than v0.8.0
3. Yarn

## Installation

First, clone this repository inside your config file. If `nvim` directory already exists, then first delete the directory and clone this repo there. Following is the command for that:

```cloning the repo
rm -rf ~/.config/nvim/ && git clone https://github.com/abhiyandhakal/nvim-config.git ~/.config/nvim/
```

Secondly, the plugin manager [Vim Plug](https://github.com/junegunn/vim-plug) needs to be installed. It can be installed using the following command.

```installation of vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

After that, open the folder using neovim.

```open the configuration folder
cd ~/.config/nvim && nvim .
```

After that you will face various errors as many plugins are yet to be installed. Then, you need to keep pressing Enter to continue and install the plugins in case of repeated errors. Then the plugins can be installed using the following command inside neovim:

```install plugins
:PlugInstall
```

Detailed instructions to use vim plug can be found in the repository of vim plug.

<hr>

After that, you need to navigate to the folder ~/.nvim/plugged/coc.nvim/. Then install the dependencies by typing `yarn` in the command line. Various all the extensions that I use are listed in the init.vim file. You can visit the github repo of [coc.nvim](https://github.com/neoclide/coc.nvim) for the guide to install the extensions. All the other configurations are already done.

<hr>

If you have github copilot, then you can setup the github copilot with the command `:Copilot setup`.
If you don't have it, you can remove the github copilot's plugin by navigating to the file ~/.config/nvim/configs/plugins.vim and then use `:PlugClean` to remove the plugin.

Now you are good to go.

**Point to be noted:**\
This is an opiniated and open source configuration file. It is just a configuration file that uses other open source plugins. Your contributions to make this configuration file better are always welcome.
