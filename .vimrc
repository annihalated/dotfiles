autocmd!

call plug#begin()
    Plug 'romainl/vim-cool'
    Plug 'preservim/vim-pencil'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'
    Plug 'sainnhe/everforest'
    Plug 'preservim/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'junegunn/goyo.vim'
call plug#end()

" Basic Editor Configuration
set shell=/bin/zsh

set nocompatible
set hidden
set history=1000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set showmatch
set incsearch
set laststatus=2
set hlsearch
set ignorecase smartcase
set number
set relativenumber
set cursorline
set cmdheight=1
set switchbuf=useopen
set winwidth=79
set backspace=indent,eol,start  " more powerful backspacing

set nobackup
set nowritebackup
set showcmd

syntax on 
syntax enable

filetype plugin indent on
set wildmode=longest,list
set wildmenu

" Appearance
set termguicolors
highlight clear LineNr

" Make the cursor look different in insert mode
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:everforest_background = 'hard'

colorscheme everforest
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

