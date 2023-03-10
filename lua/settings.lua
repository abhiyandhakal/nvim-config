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
vim.o.mouse = 'a'

-- incremental search, use n to go to the next match
vim.o.incsearch = true

-- padding on left for errors and git
vim.o.signcolumn = 'yes'

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

-- ==================== NETRW ====================
-- disable netrw header/banner
vim.g.netrw_banner = 0

-- netrw listing
vim.g.netrw_liststyle = 3
