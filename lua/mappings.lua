-- Key mappings are defined in mappings.lua

-- set leader to space
vim.g.mapleader = ' '

-- map noh to Esc
vim.keymap.set('n', '<Esc>', vim.cmd.noh)

-- map netrw to <leader>e
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- telescope mappings
vim.keymap.set('n', '<c-p>', require('telescope.builtin').find_files)

-- CHADTree opens on Ctrl + t
vim.keymap.set('n', '<c-t>', vim.cmd.CHADopen)

-- Terminal opens a horizontal split window on leader + t
vim.keymap.set('n', '<leader>t', function()
	vim.api.nvim_command('15new|terminal')
end)
