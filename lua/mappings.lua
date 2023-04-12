-- Key mappings are defined in mappings.lua

-- set leader to space
vim.g.mapleader = ' '

-- map noh to Esc
vim.keymap.set('n', '<Esc>', function()
	vim.api.nvim_command('noh')
end)

-- map netrw to <leader>e
vim.keymap.set('n', '<leader>e', function()
	vim.api.nvim_command('Explore')
end)

-- telescope mappings
vim.keymap.set('n', '<c-p>', require('telescope.builtin').find_files)

-- CHADTree opens on Ctrl + t
vim.keymap.set('n', '<c-t>', function()
	vim.api.nvim_command('CHADopen')
end)

-- Terminal opens a horizontal split window on leader + t
vim.keymap.set('n', '<leader>t', function()
	vim.api.nvim_command('15new|terminal')
end)

-- prettier
vim.keymap.set('n', '<leader>ff', function()
	vim.api.nvim_command('Prettier')
end)

-- navigation among windows
vim.keymap.set('n', '<leader>h', '<C-w>h') -- navigate left
vim.keymap.set('n', '<leader>l', '<C-w>l') -- navigate right
vim.keymap.set('n', '<leader>j', '<C-w>j') -- navigate below
vim.keymap.set('n', '<leader>k', '<C-w>k') -- navigate above
