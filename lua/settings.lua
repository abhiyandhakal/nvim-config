-- Description: Settings for Neovim

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- indentation
vim.o.autoindent = true

-- related to tabwidth
vim.o.tabstop = 2
vim.o.softtabstop = 0
vim.o.shiftwidth = 0

--mouse is allowed
vim.o.mouse = "a"

-- incremental search, use n to go to the next match
vim.o.incsearch = true

-- padding on left for errors and git
vim.o.signcolumn = "yes"

-- disable error sounds
vim.o.errorbells = false

-- start scrolling before it reaches 10 lines
vim.o.scrolloff = 10

-- highlights current line
vim.o.cursorline = true

-- uppercase or lowercase don't matter while searching
vim.o.ignorecase = true

-- split windows
vim.o.splitbelow = true
vim.o.splitright = true

-- format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- disable netrw header/banner
vim.g.netrw_banner = 0

-- netrw listing
vim.g.netrw_liststyle = 3

-- turn word wrap off
vim.o.wrap = false

-- turn off automatic comments on new lines
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove({ "o" })
	end,
})

-- vertical split character
vim.cmd("set fillchars+=vert:‖")

-- set color column
vim.o.colorcolumn = "100"

-- set swapfile off
vim.o.swapfile = false

-- suggestions height
vim.o.pumheight = 15
