" Pathogen Plugin
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

" Coloring
syntax on
color dracula
highlight Comment cterm=bold
highlight Normal cterm=none
highlight NonText ctermbg=none

" Coloring - Opaque Background (Comment out to use terminal's profile)
let opaque = 1
if opaque == 1
    set termguicolors
    set background=dark
    if &term =~ '256color'
      " Disable Background Color Erase (BCE) (Fixes lines with messed up bg)
      set t_ut=
    endif
endif

" Other Configurations
filetype plugin indent on
"set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab smartindent
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab smartindent
set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch
set ttyfast
set title
"set lazyredraw (mode bar disappears when opening a file)
set wrap breakindent
set encoding=utf-8
set fillchars+=vert:\ 

" Filetype-specific Configurations
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Syntastic (Removed due to Python 2/3 conflict)
"let g:syntastic_check_on_open = 1
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_style_error_symbol = '✠'
"let g:syntastic_warning_symbol = '∆'
"let g:syntastic_style_warning_symbol = '≈'

" Powerline
let g:airline_powerline_fonts = 1

" Lexima - C
call lexima#add_rule({'char': '//', 'input': '/* ', 'input_after': ' */', 'filetype': 'c'})
call lexima#add_rule({'char': '/*', 'input': '/* ', 'input_after': ' */', 'filetype': 'c'})
call lexima#add_rule({'char': '/m', 'input': '#include <stdio.h><CR><CR>int main(int argc, char *argv[]) {<CR>', 'input_after': '<CR>}', 'filetype': 'c'})
call lexima#add_rule({'char': '/vm', 'input': '#include <stdio.h><CR><CR>void main() {<CR>', 'input_after': '<CR>}', 'filetype': 'c'})
call lexima#add_rule({'char': '/p', 'input': 'printf("', 'input_after': '\n");', 'filetype': 'c'})
call lexima#add_rule({'char': '/for', 'input': 'for (i = 0; i < size; i++) {<CR>', 'input_after': '<CR>    }', 'filetype': 'c'})

" Lexima - Jinja
call lexima#add_rule({'char': '{%', 'input': '{% ', 'input_after': ' %}', 'filetype': 'htmldjango'})
call lexima#add_rule({'char': '{#', 'input': '{# ', 'input_after': ' #}', 'filetype': 'htmldjango'})

" NERDTree
let NERDTreeShowHidden=1
