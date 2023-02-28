call plug#begin('~/.nvim/plugged')
	Plug 'mattn/emmet-vim' " emmets, especially for html
	Plug 'tpope/vim-commentary' " comment using gcc and gc
	Plug 'neoclide/coc.nvim' " coc.nvim for intellisense
	Plug 'ap/vim-css-color' " shows the css colors by highlighting
	Plug 'ryanoasis/vim-devicons' " icons
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " nvim treesitter, required by telescope
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " colorscheme
	Plug 'nvim-tree/nvim-tree.lua' " file explorer
	Plug 'lukas-reineke/indent-blankline.nvim' " indent lines
	Plug 'github/copilot.vim' " github copilot

	" for telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim' 
	Plug 'nvim-telescope/telescope-file-browser.nvim' " file browser
call plug#end()

