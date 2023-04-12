local ls = require 'luasnip'
require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config {
	-- This tells luaSnip to remember to keep around the last snippet
	-- You can jump back into it even if you move outside of the selection
	history = true,

	-- dynamic snippets, updates as typing
	updateevents = 'TextChanged, TextChangedI',

	-- Autosnippets
	enable_autosnippets = true,
}