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
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- treesitter
	use(
		'nvim-treesitter/nvim-treesitter',
		{ run = ':TSUpdate' }
	)

	-- file browser
	use {
		'ms-jpq/chadtree', branch = 'chad',
		{ run = 'python3 -m chadtree deps' }
	}

	-- bracket pairing
	use 'jiangmiao/auto-pairs'

	-- discord presence
	use 'andweeb/presence.nvim'

	-- lsp
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-nvim-lua' },
			{ 'saadparwaiz1/cmp_luasnip' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
		}
	}

	-- beautiful status bar with airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
end)
