"------------------------------
"pathogen
"------------------------------
execute pathogen#infect()
syntax on
filetype plugin indent on

"------------------------------
"colorschemd
"------------------------------
colorscheme deus 

"------------------------------
"general
"------------------------------
set nocompatible
set autoindent
set number
set ruler
set showcmd
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set ignorecase
set smartcase
set hlsearch

"------------------------------
"mappings
"------------------------------
let mapleader=" "
inoremap jk <Esc>
"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set showmatch
"------------------------------
"NERDTree
"------------------------------
"open NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
