set nocompatible

" map leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

call plug#begin('C:/Users/Hakurei/AppData/Local/nvim/plugged') 
Plug 'vim-airline/vim-airline'

" Configure Airline
let g:airline_powerline_fonts = 1

let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1

"more airline apperance configuration
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'jistr/vim-nerdtree-tabs'

" Configure Nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 25

Plug 'mhartington/oceanic-next'

" appearance
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',

" Configure fzf
" nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <leader>F :GFiles<CR>
nnoremap <silent> <leader>f :Files<CR>

Plug 'neoclide/coc.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'folke/which-key.nvim'

Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'mhinz/vim-startify'
 let g:startify_custom_header = [
            \ '                                 ________  __ __        ',
            \ '            __                  /\_____  \/\ \\ \       ',
            \ '    __  __ /\_\    ___ ___      \/___//''/''\ \ \\ \    ',
            \ '   /\ \/\ \\/\ \ /'' __` __`\        /'' /''  \ \ \\ \_ ',
            \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \      /'' /''__  \ \__ ,__\',
            \ '    \ \___/  \ \_\ \_\ \_\ \_\    /\_/ /\_\  \/_/\_\_/  ',
            \ '     \/__/    \/_/\/_/\/_/\/_/    \//  \/_/     \/_/    ',
            \ ]

" Vim ranger setup
let g:ranger_map_keys = 0
nnoremap <silent> <leader>r :Ranger<CR>

call plug#end()

" Display line numbers
set number

" configure vim-which-key
set timeoutlen=200


nnoremap <silent> <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Theme setup
 syntax enable

if (has('termguicolors'))
    set termguicolors
endif

colorscheme OceanicNext

"Map ctrl L to clear highlights
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Fix Shift-Insert not pasting in nvim-qt
inoremap <silent>  <S-Insert>  <C-R>+

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

" Set max line length to 80
set colorcolumn=80
set textwidth=80

" Automatically set nect line to correct indentation
set autoindent

" Convert tabs to spaces
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ruler
set cursorline

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

let &undodir=expand('~/AppData/Local/nvim/undodir')
if !isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif
