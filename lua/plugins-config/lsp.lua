local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.nvim_workspace()

lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
	'eslint',
	'dockerls',
	'lua_ls',
	'bashls'
})

lsp.setup()
