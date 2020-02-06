call plug#begin('~/dotfiles/nvim/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'kshenoy/vim-signature'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set title
colorscheme dracula 
set nocompatible
set modelines=0
set filetype=on
"set autochdir
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
set number
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
:nmap ,p o<ESC>p

set wrap
set formatoptions=qrn1

cmap w!! w !sudo tee > /dev/null %
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
vnoremap // y/<C-R>"<CR>
inoremap jk <ESC>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
:map <C-s> :w <Enter>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

nmap ,d :b#<bar>bd#<CR>


" NerdTree
map <C-m> :NERDTreeFocus<CR>


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

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
nmap <leader>x :TagbarToggle<CR> 
nnoremap <C-S-f> :Ag 

" Folding
set foldmethod=indent
set nofoldenable

set guifont=Hack\ Nerd\ Font\ 14

let g:vimwiki_list = [{'path':'/home/syrinxos/Dropbox/Documents/notes','syntax':'markdown', 'ext':'md', 'path_html':'/home/syrinxos/ownCloud/Documents/notes/export/html/'}]
autocmd FileType vimwiki set ft=markdown

autocmd FileType gdscript3 setlocal softtabstop=0 shiftwidth=4 tabstop=4 noexpandtab copyindent preserveindent

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
