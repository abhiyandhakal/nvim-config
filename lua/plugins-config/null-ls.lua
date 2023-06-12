local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- lua
		null_ls.builtins.formatting.stylua,

		-- javascript / typescript
		null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.formatting.prettierd,
	},
})
