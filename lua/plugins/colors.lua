-- Set the colorscheme
vim.cmd('colorscheme catppuccin')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

require("catppuccin").setup {
    color_overrides = {
        all = {
           base = "#111121",
        },
    }
}
