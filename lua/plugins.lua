local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- comment using gcc and gc
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- css colors highlighting
	use 'ap/vim-css-color'

	-- colorscheme
	-- use 'rose-pine/neovim'
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

	-- git integration
	use 'tpope/vim-fugitive'

	-- treesitter
	use(
		'nvim-treesitter/nvim-treesitter',
		{ run = ':TSUpdate' }
	)

	-- file browser
	use {
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v2.x',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
		}
	}

	-- bracket pairing
	use 'LunarWatcher/auto-pairs'

	-- discord presence
	use 'andweeb/presence.nvim'

	-- code folding
	use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

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
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	-- for diagnostics
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}
	use {
		'chikko80/error-lens.nvim',
		requires = { 'nvim-telescope/telescope.nvim' }
	}

	-- formatting
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'


	-- beautiful status bar with airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	-- terminal
	use 'vimlab/split-term.vim'

	-- startup screen
	use {
		"startup-nvim/startup.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	}

	-- brackets surrounding and all
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({})
		end
	})

	-- harpoon for alternate files
	use 'ThePrimeagen/harpoon'

	-- oil.nvim
	use {
		'stevearc/oil.nvim',
		config = function() require('oil').setup() end
	}

	use '/home/abhiyan/coding/nvim-plugins/float.nvim'

	-- automatically syncs on startup
	if packer_bootstrap then
		require('packer').sync()
	end
end)
