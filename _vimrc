" Vundle Recommend
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'ycm-core/YouCompleteMe'
	Plugin 'vim-syntastic/syntastic'
	"Plugin 'dracula/vim', { 'name': 'dracula' }
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/gvimrc_example.vim
source $VIMRUNTIME/vimrc_example.vim
let mapleader = " "
"au GUIEnter * simalt ~x "Full screen
set lines=80
set columns=100
set encoding=utf-8
:let g:loaded_alternate_lite = 'noway'

set guifont=Consolas:h11:cANSI
colorscheme evening

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set autowrite     " automatically :write before running commands
set shortmess+=I 
set number 
set relativenumber 
set numberwidth=5
set laststatus=2 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set backspace=indent,eol,start " Allow backspacing over everything in insert mode.
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line
set hidden 
set ignorecase 
set smartcase 
set incsearch 
nmap Q <Nop> 
set noerrorbells visualbell t_vb= 
set mouse+=a
set textwidth=80
set autoindent
set smartindent
set autoread
set tabstop=2     " Softtabs, 2 spaces
set shiftwidth=2
set shiftround
set expandtab
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" Autocomplete with dictionary words when spell check is on
set complete+=kspell
" Always use vertical diffs
set diffopt+=vertical
" Copy to clipboard
set clipboard=unnamed
set lazyredraw

nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>
nmap <Leader>v :e ~/_vimrc<CR>
" ctrl+m to minimize
map <C-m> :simalt ~n<CR>

nnoremap <Left>  :echoe "Use h"<CR> 
nnoremap <Right> :echoe "Use l"<CR> 
nnoremap <Up>    :echoe "Use k"<CR> 
nnoremap <Down>  :echoe "Use j"<CR>  
inoremap <Left>  <ESC>:echoe "Use h"<CR> 
inoremap <Right> <ESC>:echoe "Use l"<CR> 
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" ctrl+n to open new gvim widnow
nnoremap <c-n> :!start /b gvim<CR>
