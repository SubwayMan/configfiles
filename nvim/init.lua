
require('SubwayMan')

vim.g.mapleader = ' '

-- Disable providers to clean checkhealth
vim.g.loaded_ruby_provider=0
vim.g.loaded_node_provider=0
vim.g.loaded_perl_provider=0

vim.o.number = true
vim.o.relativenumber = true
vim.o.ttyfast = true
vim.o.backspace = [[indent,eol,start]]

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>q', ':bp<bar>sp<bar>bn<bar>bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('v', '<C-n>', ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-n>', '<ESC>:NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- Terminal mode mappings
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', opts)

-- Tab remappings
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

vim.o.autowrite = true

vim.o.cursorline = true
vim.cmd [[set mouse=a]]

vim.o.termguicolors = true

-- 
vim.g.catppuccin_flavour = 'mocha'
vim.cmd [[colorscheme catppuccin ]]

-- Undofile
local prefix = vim.fn.expand('~/.config')
vim.opt.undolevels = 999999
vim.opt.undofile = true
vim.opt.undodir = { prefix .. '/nvim/.undo/' }
