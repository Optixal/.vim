runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()
color dracula
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab smartindent
set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch
set nowrap
set encoding=utf-8
filetype plugin indent on
syntax on
highlight Comment cterm=bold
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'

" Powerline
let g:airline_powerline_fonts = 1
