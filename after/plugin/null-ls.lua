local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- lua
		null_ls.builtins.formatting.stylua,

		-- javascript / typescript
		require("none-ls.diagnostics.eslint"),
		null_ls.builtins.formatting.prettierd,

		-- python
		null_ls.builtins.diagnostics.pylint.with({
			diagnostics_postprocess = function(diagnostic)
				diagnostic.code = diagnostic.message_id
			end,
		}),
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.black,

		-- sql
		null_ls.builtins.diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
		}),
		null_ls.builtins.formatting.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
		}),
	},
})
