local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- lua
		null_ls.builtins.formatting.stylua,

		-- javascript / typescript
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.formatting.prettierd,

		-- python
		null_ls.builtins.formatting.autopep8,
		null_ls.builtins.diagnostics.flake8,
	},
})
