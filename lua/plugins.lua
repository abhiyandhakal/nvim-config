return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- emmets, especially for html
	use 'mattn/emmet-vim'

	-- comment using gcc and gc
	use 'tpope/vim-commentary'

	-- css colors highlighting
	use 'ap/vim-css-color'

	-- colorscheme
	use 'rose-pine/neovim'
	use 'catppuccin/nvim'

	-- icons
	use 'ryanoasis/vim-devicons'
	
	-- indent lines
	use 'lukas-reineke/indent-blankline.nvim'
	
	-- telescope
	use {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- treesitter
	use (
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	)

	-- file browser
	use {
		'ms-jpq/chadtree', branch = 'chad',
		{ run = 'python3 -m chadtree deps' }
	}

	-- lsp
	use {
		'neoclide/coc.nvim', branch = 'release',
		{ run = 'yarn install --frozen-lockfile' }
	}

	-- github copilot
	use 'github/copilot.vim'

	-- beautiful status bar
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
end)
