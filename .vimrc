"General setting
set number
set relativenumber
set ai
set tabstop=4
set expandtab
set shiftwidth=4
set bg=dark
set ruler
syntax on
set clipboard^=unnamed
set backspace=indent,eol,start
set visualbell

"Set up search highlight
set hlsearch
hi Search ctermbg=Yellow
hi Search ctermfg=DarkBlue
hi Comment ctermfg=DarkRed

"Set up cursorline
set cursorline
hi CursorLine cterm=bold ctermbg=none ctermfg=none gui=bold

"Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'nordtheme/vim'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
call plug#end()

"Set up the lightline plugin
set laststatus=2
colorscheme nord 
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
if !has('gui_running')
    set t_Co=256
endif

"Set up the rainbow parenthesis
let g:rainbow_active = 1

"Uncomment the following line when using tmux
"highlight Normal ctermbg=None
