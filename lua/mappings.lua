-- setting leader to <space>
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- :noh on <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>')

-- navigation among windows
vim.keymap.set("n", "<leader>h", "<C-w>h") -- navigate left
vim.keymap.set("n", "<leader>l", "<C-w>l") -- navigate right
vim.keymap.set("n", "<leader>j", "<C-w>j") -- navigate below
vim.keymap.set("n", "<leader>k", "<C-w>k") -- navigate above

-- terminal
vim.keymap.set("n", "<c-j>", function()
	vim.api.nvim_command("20Term")
end)

-- clipboard
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])
