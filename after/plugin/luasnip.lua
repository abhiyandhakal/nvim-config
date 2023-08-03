local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

luasnip.config.set_config({
	-- This tells luaSnip to remember to keep around the last snippet
	-- You can jump back into it even if you move outside of the selection
	history = true,

	-- dynamic snippets, updates as typing
	updateevents = "TextChanged, TextChangedI",

	-- Autosnippets
	enable_autosnippets = true,
})

vim.keymap.set("i", "<F12>", '<cmd>lua require"luasnip".jump(1)<cr>')
