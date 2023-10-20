autocmd!

call plug#begin()
    Plug 'romainl/vim-cool'
call plug#end()


" Basic Editor Configuration
set nocompatible
set hidden
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
set number
set cursorline
set cmdheight=1
set switchbuf=useopen
set winwidth=79

set nobackup
set nowritebackup
set showcmd

syntax on 
filetype plugin indent on
set wildmode=longest,list
set wildmenu
let mapleader=","
set foldmethod=manual
set nofoldenable

" Appearance
set termguicolors
colorscheme solarized8
highlight clear LineNr
