" enable plugins
call plug#begin('~/.vim/plugged')
    Plug 'https://github.com/altercation/vim-colors-solarized'
    Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/mbbill/undotree'
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

" enable smart indenting
set smartindent

" disable line wrapping
set nowrap

" case sensitive searching
set smartcase

" configure undoing
set undodir=~/.vim/undodir
set undofile
set backupdir=~/.vim/tmpdir

" enable incremental search
set incsearch

" enable 80 character column marker
set colorcolumn=80

" disable annoying errorbells
set belloff=all

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

" share clipboard
set clipboard=unnamed

" use solarized for colorscheme
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

" undotree
nnoremap <leader>u :UndotreeShow<CR>

" CoC
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

fun! GoCoc()
    inoremap <buffer> <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " code navigation
    nmap <leader>gd <Plug>(coc-definition)
    nmap <leader>gy <Plug>(coc-type-defintion)
    nmap <leader>gi <Plug>(coc-implementation)
    nmap <leader>gr <Plug>(coc-references)
    nnoremap <leader>cr :CocRestart
endfun

