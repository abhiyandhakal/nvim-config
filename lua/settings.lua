-- relative line numbering
vim.o.number = true;
vim.o.relativenumber = true;

-- mouse allowed
vim.o.mouse = 'a'

-- indentation
vim.o.autoindent = true

-- related to tabwidth
vim.o.tabstop = 2
vim.o.shiftwidth = 0

-- incremental search, use n to go to the next match
vim.o.incsearch = true

-- padding on left for errors and git
vim.o.signcolumn = "yes"

-- highlight current line
vim.o.cursorline = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- split windows
vim.o.splitbelow = true
vim.o.splitright = true

-- format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

-- remove autocomment on new line
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove("c")
		vim.opt.formatoptions:remove("r")
		vim.opt.formatoptions:remove("o")
	end,
})
