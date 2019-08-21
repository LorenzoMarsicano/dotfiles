execute pathogen#infect()
colorscheme monokai
set nocompatible
set modelines=0
set filetype=on
set autochdir
set mouse=a
filetype plugin on
syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
"set cursorline
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
set smartindent
syntax enable

let mapleader=","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

nmap <leader>m :!make<cr>

set wrap
set formatoptions=qrn1

cmap w!! w !sudo tee > /dev/null %
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

inoremap jk <ESC>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Lightline
set laststatus=2

let g:lightline = {
    \ 'colorscheme': 'landscape',
    \ 'active': {
    \       'left' : [ ['mode', 'paste'],
    \                   ['readonly', 'filename', 'modified']],
   \       'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']],
   \  },
\}

" gitgutter
set updatetime=100

" fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'

nmap <Leader>F :GFiles<CR>
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>' :Marks<CR>

" Tagbar
nmap <C-m> :TagbarToggle<CR> 

" Folding
set foldmethod=indent
set nofoldenable
