vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.signcolumn = 'yes'
vim.opt.showmode = false

-- Backspace
vim.opt.backspace = 'indent,eol,start'

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('data') .. '/undo'

-- Performance
vim.opt.lazyredraw = true
vim.opt.updatetime = 300

-- Mouse
vim.opt.mouse = 'a'