" Pathogen Plugin
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

" Coloring
color dracula
syntax on
highlight Comment cterm=bold
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Other Configurations
filetype plugin indent on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab smartindent
set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch
set ttyfast lazyredraw
set nowrap
set encoding=utf-8

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'

" Powerline
let g:airline_powerline_fonts = 1

" Lexima
call lexima#add_rule({'char': '//', 'input': '/* ', 'input_after': ' */', 'filetype': 'c'})
call lexima#add_rule({'char': '/*', 'input': '/* ', 'input_after': ' */', 'filetype': 'c'})
call lexima#add_rule({'char': '/m', 'input': '#include <stdio.h><CR><CR>int main(int argc, char *argv[]) {<CR>', 'input_after': '<CR>}', 'filetype': 'c'})
call lexima#add_rule({'char': '/vm', 'input': '#include <stdio.h><CR><CR>void main() {<CR>', 'input_after': '<CR>}', 'filetype': 'c'})
call lexima#add_rule({'char': '/p', 'input': 'printf("', 'input_after': '\n");', 'filetype': 'c'})
call lexima#add_rule({'char': '/for', 'input': 'for (i = 0; i < size; i++) {<CR>', 'input_after': '<CR>    }', 'filetype': 'c'})
