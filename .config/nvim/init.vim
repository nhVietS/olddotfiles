" Always keep your vimrc || vim.init clean !!!
" general config: set line number, encoding, shell, mouse, ...
" apperance: font, color, ..
" plugins: 
" mapping: Map keys w/ action 
" Behavior && extend: config about behavior such as: swap file, autosave, backup, custom functions 

" map <Leader> to space key
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set exrc          " to source .vimrc file if it present in working directory, thus providing a place to store project-specific configuration.
set secure        " restrict usage of some commands in non-default .vimrc files
set textwidth=80
set autoindent
set smartindent
set autoread
set tabstop=2     " Softtabs, 2 spaces
set shiftwidth=2
set shiftround
set expandtab

highlight ColorColumn ctermbg=darkgray

syntax enable

" Use one space, not two, after punctuation.
set nojoinspaces

" Numbers
set relativenumber
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Copy to clipboard
set clipboard=unnamed

set lazyredraw

filetype plugin indent on

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>

nmap <Leader>v :e ~/.vimrc<CR> 		           " Quickly edit .vimrc file
noremap <Leader><Leader>s :so ~/.vimrc<CR>     " Source .vimrc file

nmap <Leader>nv :e ~/.config/nvim/init.vim<CR>" Quickly edit ~/.config/nvim/init.vim file
noremap <Leader><Leader>ns :PlugInstall<CR>    " ~/.config/nvim/init.vim/ quick PlugInstall 

let NERDTreeShowHidden=1

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" ctrl+n to open new terminal in vim
nnoremap <c-n> :call OpenTerminal()<CR>

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
  Plug 'easymotion/vim-easymotion'
  Plug 'Shougo/deoplete.nvim'
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdcommenter'
  Plug 'dense-analysis/ale'
  Plug 'mg979/vim-visual-multi'
call plug#end()
