execute pathogen#infect()

filetype plugin indent on
syntax on

" gruvbox
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

" display
set guifont=Hack\ Nerd\ Font\ Regular:h14
set colorcolumn=90
set number

map <leader>s :source ~/.vimrc<CR>

" smart defaults
set hidden
set history=500
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch

" airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

" gnome terminal color palette
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
