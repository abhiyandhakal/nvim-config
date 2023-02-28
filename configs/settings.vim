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

" colorscheme
colorscheme catppuccin-mocha

" nvimtree
luado vim.g.loaded_netrw = 1
luado vim.g.loaded_netrwPlugin = 1

" github copilot
Copilot enable
