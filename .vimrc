" enable plugins
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/junegunn/fzf.vim'
call plug#end()

" set leader to space
let mapleader =" "

" syntax highlighting
syntax on

" relative line numbers
set number relativenumber

" enable autocompletion
set wildmode=longest,list,full

" encoding
set encoding=utf-8

" map spellcheck to <leader>o
map <leader>o :setlocal spell! spelllang=en_us<CR>

" split bottom and right
set splitbelow splitright

" expand tabs to spaces
set expandtab

" set tabs to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" remember last place in file
source $VIMRUNTIME/vimrc_example.vim

" shortcuts for splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" use solarized for colorscheme
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

" Nerd tree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
if has('nvim')
    let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
else
    let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
endif

" share clipboard
set clipboard=unnamed

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
