let mapleader = " "
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
set exrc
set secure
set textwidth=80
set autoindent
set smartindent
set autoread
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set mouse+=a
set textwidth=80
set colorcolumn=+1
set laststatus=2
set t_Co=256
set ignorecase
set nojoinspaces
set relativenumber
set number
set numberwidth=5
set splitbelow
set splitright
if (has("termguicolors"))
  set termguicolors
endif
set complete+=kspell
set diffopt+=vertical
set clipboard=unnamed
set lazyredraw
set nrformats-=octal
set cmdheight=3
set list
set listchars=tab:>-,trail:-

if has('mouse')
  set mouse=a
endif
filetype plugin indent on
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
highlight ColorColumn ctermbg=darkgray
syntax enable
let g:is_posix = 1
nnoremap <up> <nop>

if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

augroup vimrcEx
   au!
   autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif

nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>
nmap <Leader>v :e ~/.vimrc<CR>
noremap <Leader><Leader>s :so ~/.vimrc<CR>
nmap <Leader>nv :e ~/.config/nvim/init.vim<CR>
noremap <Leader><Leader>ns :PlugInstall<CR>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

call plug#begin("~/.vim/plugged")
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'Valloric/YouCompleteMe'
  Plug 'rking/ag.vim'
  Plug 'tpope/vim-repeat'
  Plug 'kien/ctrlp.vim'
  Plug 'mattn/emmet-vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'takac/vim-hardtime'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'easymotion/vim-easymotion'
  Plug 'Shougo/deoplete.nvim'
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdcommenter'
  Plug 'dense-analysis/ale'
  Plug 'mg979/vim-visual-multi'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabledi= 1
let g:airline_theme='minimalist'
let g:Powerline_symbols = 'fancy'
set t_Co=256
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
