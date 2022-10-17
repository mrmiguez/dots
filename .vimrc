" Vim configuration file
" Author: Matthew Miguez
" Last Edited: 2016-02-04

" Run Pathogen
execute pathogen#infect()

" System Options
set nocompatible
set encoding=utf-8
set fileformat=unix
set nobackup
set noswapfile
set mouse-=a
set backspace=2

" Display Options
set number
set visualbell
set nowrap
set autoindent
set smartindent
" set tabstop=2
" set shiftwidth=2
" set expandtab
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
set cc=78

" Syntax & Indentation Options
syntax enable 
filetype plugin on
filetype indent on
filetype plugin indent on
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" Code Folding Options
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Overrides
highlight ColorColumn ctermbg=5


" Drupal file extension recognition
if has("autocmd")
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

"let g:vim_g_command = "G"

" Macros
" let @1 = 'iHello World'

" HTML5 compiler setup
"au FileType html compiler html
