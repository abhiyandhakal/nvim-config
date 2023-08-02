-- setting leader to <space>
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- :noh on <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>')

-- telescope mappings
