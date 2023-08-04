local ft = require("guard.filetype")

-- multiple files register
ft("typescript,javascript,typescriptreact,css,scss,grqphql,html,json,less,markdown,yaml"):fmt("prettier")


-- call setup LAST
require("guard").setup({
	-- the only options for the setup function
	fmt_on_save = true,
	-- Use lsp if no formatter was defined for this filetype
	lsp_as_default_formatter = false,
})
