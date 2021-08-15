" Display line numbers
set number
"Map ctrl L to clear highlights
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Display options
set showmode
set showcmd

" Disable bell sounds 
set noerrorbells visualbell t_vb=

" Speed up scrolling
set ttyfast

" Fix backspace
set backspace=indent,eol,start

" Turn on syntax highlighting
syntax on

" Automatically set nect line to correct indentation
set autoindent

" Convert tabs to spaces
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ruler
" enable mouse
set mouse=a
" Fix weird autoindent when pasting in vim
set pastetoggle=<F2>
set hlsearch
set confirm

" Prevents yank from transporting you to where you first started selection
vmap y ygv<Esc>

set undolevels=967067

set undofile

let &undodir=expand('~/.vim/undodir')
if !isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif
