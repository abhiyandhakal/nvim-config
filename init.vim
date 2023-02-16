set relativenumber
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

nmap <C-`> :10new term://bash<CR>

set splitbelow splitright

" noh - no highlight
map <esc> :noh <CR>

call plug#begin('~/.nvim/plugged')
	Plug 'mattn/emmet-vim' " emmets, especially for html
	Plug 'vim-airline/vim-airline' " beautiful statusbar
	Plug 'preservim/nerdtree' " nerdtree
	Plug 'tpope/vim-commentary' " comment using gcc and gc
	Plug 'neoclide/coc.nvim' " coc.nvim for intellisense
	Plug 'ap/vim-css-color' " shows the css colors by highlighting
	Plug 'ryanoasis/vim-devicons' " icons
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " nvim treesitter, required by telescope

	" for telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
call plug#end()

" nerdtree configs
nnoremap <c-f> :NERDTreeFind<CR>
nnoremap <c-n> :NERDTree<CR>
nnoremap <c-t> :NERDTreeToggle<CR>


" imports
source $HOME/.config/nvim/plug-config/coc.vim

" emmet shortcuts (for html)
let g:user_emmet_mode='n' "means normal mode only
let g:user_emmet_leader_key=','

" fuzzy finder mapping to ff
nnoremap ff <cmd>Telescope find_files<cr>

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
