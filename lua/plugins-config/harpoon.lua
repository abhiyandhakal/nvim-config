-- add file
vim.keymap.set('n', '<leader>a', function()
	vim.api.nvim_command('lua require("harpoon.mark").add_file()')
end)

-- toggle quick menu
vim.keymap.set('n', '<leader>s', function()
	vim.api.nvim_command('lua require("harpoon.ui").toggle_quick_menu()')
end)

require("telescope").load_extension('harpoon')

-- navigation
vim.keymap.set('n', '<Tab>', function()
	vim.api.nvim_command('lua require("harpoon.ui").nav_next()')
end)
vim.keymap.set('n', '<S-Tab>', function()
	vim.api.nvim_command('lua require("harpoon.ui").nav_prev()')
end)
