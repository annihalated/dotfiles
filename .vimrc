"Plugins
call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/goyo.vim'
  Plug 'lervag/vimtex'
  Plug 'ActivityWatch/aw-watcher-vim'
  Plug 'tpope/vim-surround'
call plug#end()

set mouse=a
let mapleader = ","
set clipboard=unnamed

" FZF
set rtp+=/opt/homebrew/opt/fzf

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Files, backups, undo
set nobackup
set nowb
set noswapfile

"Tabs, spaces, etc.
set expandtab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
set ai
set si
set wrap

"Split management
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Appearance
set ruler 
set cmdheight=1
set laststatus=2
colorscheme solarized
set background=dark
set cursorline


" Completion
set wildmenu
set wildmode=longest:full,full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Search functionality
set incsearch
set hlsearch
set ignorecase
set smartcase

set history=500
syntax enable 
filetype plugin on 
filetype indent on

set number

" Aliases
nmap <leader>w :w!<cr>
nmap <leader>s :source ~/.vimrc<cr>
nmap <leader>n :noh<cr>
nmap <leader>e :FZF<cr>
nmap j gj
nmap k gk

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
