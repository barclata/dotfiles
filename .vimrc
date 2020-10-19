let mapleader=","

syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4

set number
set showcmd
set cursorline
"set lazyredraw
set showmatch

set incsearch
set hlsearch

nnoremap j gj
nnoremap k gk
nnoremap h <bs>
nnoremap l <space>

nnoremap H ^
nnoremap L $

cmap w!! w !sudo tee >/dev/null %
inoremap fd <esc>

set mouse=a
colorscheme darkblue
