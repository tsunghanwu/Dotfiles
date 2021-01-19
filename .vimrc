set nu
set ai
set tabstop=4
set expandtab
set shiftwidth=4
set bg=dark
set ruler
syntax on

"Set up search highlight
set hlsearch
hi Search ctermbg=Yellow
hi Search ctermfg=DarkBlue
hi Comment ctermfg=DarkRed

"Set up cursorline
set cursorline
hi CursorLine cterm=bold ctermbg=none ctermfg=none gui=bold

set clipboard^=unnamed
set backspace=indent,eol,start

"Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
call plug#end()

"Setup the lightline plugin
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
if !has('gui_running')
	set t_Co=256
endif

"Setup the rainbow parenthesis
let g:rainbow_active = 1

"Setup the tender colorscheme to overwrite the original setup
colorscheme tender
