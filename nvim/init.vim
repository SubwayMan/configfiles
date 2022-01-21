set nocompatible

" map leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

call plug#begin('C:/Users/Hakurei/AppData/Local/nvim/plugged') 
Plug 'vim-airline/vim-airline'

" Configure Airline
let g:airline_powerline_fonts = 1

let g:airline_theme='onedark'
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
Plug 'joshdick/onedark.vim'

" appearance
let g:onedark_terminal_italics=1

" Autocommand for running program
autocmd FileType python nnoremap <silent> <leader>; :!py<space>%<CR>
autocmd FileType cpp nnoremap <silent> <leader>; :!clang++<space>-std=c++17<space>-g<space>-o<space>%:r.exe<space>-Wall<space>%<CR>

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" easier buffer switching
nnoremap <silent> <leader>0 :bn<CR>
nnoremap <silent> <leader>9 :bp<CR>

Plug 'tpope/vim-fugitive'
Plug 'folke/which-key.nvim'

" For hex preview
Plug 'norcalli/nvim-colorizer.lua'

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

Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

call plug#end()

lua require('SubwayMan')

" Display line numbers
set number

" configure vim-which-key
set timeoutlen=400


nnoremap <silent> <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Theme setup
syntax enable

if (has('termguicolors'))
    set termguicolors
endif

let g:gruvbox_italic=1
colorscheme onedark

"Map ctrl L to clear highlights
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Fix Shift-Insert not pasting in nvim-qt
inoremap <silent> <S-Insert> <C-R>+

" Display options
set showmode
set showcmd
set nowrap

" Disable bell sounds 
set noerrorbells visualbell t_vb=

" Speed up scrolling
set ttyfast

" Fix backspace
set backspace=indent,eol,start

" Turn on syntax highlighting
syntax on

" Highlight column at 100
set colorcolumn=100

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

" Allow buffer hiding
set hidden

" Prevents yank from transporting you to where you first started selection
vmap y ygv<Esc>

" window splitting configuration
set splitbelow
set splitright
nnoremap <silent> <Leader>wn :vsp<CR>
nnoremap <silent> <Leader>wm :sp<CR>

" easy window switching
nnoremap <silent> <Leader>wk <C-W>k
nnoremap <silent> <Leader>wj <C-W>j
nnoremap <silent> <Leader>wh <C-W>h
nnoremap <silent> <Leader>wl <C-W>l

nnoremap <silent> <Leader>ww <C-W>+
nnoremap <silent> <Leader>ws <C-W>-
nnoremap <silent> <Leader>wa <C-W><
nnoremap <silent> <Leader>wd <C-W>>

set undolevels=967067
set undofile

let &undodir=expand('~/AppData/Local/nvim/undodir')
if !isdirectory(&undodir)
    call mkdir(&undodir, 'p')
endif
