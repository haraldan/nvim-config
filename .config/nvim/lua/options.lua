-- Leader key
vim.g.mapleader = " "

-- line numbers
-- opt.relativenumber = true -- show relative line numbers
vim.opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
vim.opt.tabstop = 2 -- spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
