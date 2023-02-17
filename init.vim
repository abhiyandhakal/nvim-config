source ~/.config/nvim/configs/plugins.vim
source ~/.config/nvim/configs/settings.vim
source ~/.config/nvim/plug-config/coc.vim

" emmet shortcuts (for html)
let g:user_emmet_mode='n' "means normal mode only
let g:user_emmet_leader_key=','

" telescope
luado require("telescope").load_extension "file_browser"

" nvim tree -- file browser
luado require("nvim-tree").setup()

source ~/.config/nvim/configs/mappings.vim
" source ~/.config/nvim/configs/colorscheme.lua

"" COC INSTALLS
" coc-html
" coc-python
" coc-clangd
" coc-css
" coc-json
" coc-git
" coc-discord-rpc
" coc-eslint
" coc-floaterm
" coc-highlight
" coc-markdown-preview-enhanced
" coc-prettier
" coc-rust-analyzer
" coc-snippets
" @yaegassy/coc-tailwindcss3
" coc-texlab
" coc-tsserver
" coc-pairs
" coc-styled-components
