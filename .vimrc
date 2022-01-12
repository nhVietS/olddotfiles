" Enable syntax highlighting
syntax enable
set nocompatible
let mapleader = ","
set backspace=2
set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set secure
set textwidth=80
set autoindent
set smartindent
set autoread
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set ttymouse=xterm2
set mouse+=a
set textwidth=80
set colorcolumn=+1
set laststatus=2
set ignorecase
set smartcase
set nojoinspaces
set relativenumber
set number
set numberwidth=5
set splitbelow
set splitright
set complete+=kspell
set diffopt+=vertical
set clipboard=unnamed
" Enable cursor line position tracking:
set cursorline
" Remove the underline from line and numbering enabling cursorline
highlight clear CursorLine
highlight clear CursorLineNR
" Set line numbering to red background:
highlight CursorLineNR ctermbg=black 
highlight CursorLine ctermbg=black
