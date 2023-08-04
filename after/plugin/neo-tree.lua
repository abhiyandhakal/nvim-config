require("neo-tree").setup({
	source_selector = {
		winbar = false,
		statusline = false
	}
})

vim.keymap.set('n', '<leader>t', '<cmd>Neotree float toggle reveal<cr>')
