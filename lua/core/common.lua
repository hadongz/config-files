vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fix
vim.cmd('set nocompatible')

-- Enable mouse support
vim.cmd('set mouse=a')

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Enable line numbers
vim.wo.number = true

-- Highlight current line
-- vim.wo.cursorline = true

-- Highlight search results
vim.o.hlsearch = true

-- Enable smartcase for search sensitivity
vim.o.ignorecase = true
vim.o.smartcase = true

-- Disable error bell
vim.o.belloff = 'all'

-- Set color scheme (change to your preferred colorscheme)
vim.cmd('colorscheme desert')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('hi NonText guibg=NONE ctermbg=NONE')

-- Indentation using spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.textwidth = 80
vim.o.autoindent = true
vim.opt.shiftround = true

-- Auto-commenting options for C-like programming
vim.cmd('autocmd FileType c,cpp,java set formatoptions+=ro')
vim.cmd('autocmd FileType c set omnifunc=ccomplete#Complete')

-- Makefile settings
vim.cmd('autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0')

-- Show matching pairs
vim.o.showmatch = true

-- Remove trailing whitespace from Python and Fortran files on save
vim.cmd('autocmd BufWritePre *.py :%s/\\s\\+$//e')
vim.cmd('autocmd BufWritePre *.p90 :%s/\\s\\s+%//e')
vim.cmd('autocmd BufWritePre *.p95 :%s/\\s\\s+%//e')
vim.cmd('autocmd BufWritePre *.for :%s/\\s\\s+%//e')

-- Enable true color support
-- vim.o.termguicolors = true

-- Copy to clipboard with Ctrl+c (normal and visual modes)
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('x', '<C-c>', '"+y', { noremap = true })

-- Paste from clipboard with Ctrl+v (insert mode)
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true })

-- Select all text with Ctrl+a
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })
