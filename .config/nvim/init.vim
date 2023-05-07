set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click

filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file
" set backspace=indent,eol,start  " Backspace behavior
" set backupdir=~/.cache/vim " Directory to store backup files.
set splitbelow             " Split below
set list lcs=tab:\|\        " Show identation
set autochdir               " Automatically change current working directory
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
"set conceallevel=0  " enable conceal support
"set scrolloff=5
set spelllang=en,de

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

tnoremap <Esc> <C-\><C-n>  " Use esc to exit terminal mode
 
filetype plugin indent on

" Force python to use tab identation
autocmd Filetype python setlocal sw=4 ts=4 expandtab!

" Add command to reload vi config
command Reloadconfig source $MYVIMRC

set clipboard=unnamedplus


" ----------- Plugins -----------

" Automate plug install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endi

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
"Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

" ---------- Plugin Options --------

" Nerdtree
nnoremap <F3> :NERDTreeToggle<CR>

" --------- Colorscheme -----------
let g:rehash256 = 1
let g:onedark_termcolors = 256
colorscheme molokai

