"set relativenumber
set nu " set number

set autoindent

set nowrap

" related to tabwidth
set tabstop=2
set softtabstop=0
set shiftwidth=0

set mouse=a " mouse is allowed
set incsearch " incremental search, use n to go to the next
set signcolumn=yes " padding on left for errors and git
set noerrorbells " disable error sounds

set scrolloff=10 " start scrolling before it reaches 10 number of lines

set cursorline " highlights current line

set ignorecase " uppercase or lowercase don't matter while searching

set splitbelow splitright

" noh - no highlight
map <esc> :noh <CR>

call plug#begin('~/.nvim/plugged')
	Plug 'mattn/emmet-vim' " emmets, especially for html
	Plug 'vim-airline/vim-airline' " beautiful statusbar
	Plug 'tpope/vim-commentary' " comment using gcc and gc
	Plug 'neoclide/coc.nvim' " coc.nvim for intellisense
	Plug 'ap/vim-css-color' " shows the css colors by highlighting
	Plug 'ryanoasis/vim-devicons' " icons
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " nvim treesitter, required by telescope
	Plug 'abhiyandhakal/nvim-colorscheme' " colorscheme
	Plug 'nvim-tree/nvim-tree.lua' " file explorer

	" for telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim' 
	Plug 'nvim-telescope/telescope-file-browser.nvim' " file browser
call plug#end()

" colorscheme
colorscheme catppuccin-mocha

" imports
source $HOME/.config/nvim/plug-config/coc.vim

" emmet shortcuts (for html)
let g:user_emmet_mode='n' "means normal mode only
let g:user_emmet_leader_key=','

" telescope
nnoremap <c-p> :Telescope find_files<cr>
luado require("telescope").load_extension "file_browser"
nnoremap <c-f> :Telescope file_browser<cr>

" nvim tree -- file browser
luado require("nvim-tree").setup()
nnoremap <c-t> :NvimTreeToggle<CR>

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
