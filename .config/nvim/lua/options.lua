-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
-- opt.relativenumber = true -- show relative line numbers
vim.opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 -- spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- ignore case when searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Normal mode shortcuts
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>cd", ":lcd %:h<CR>") -- change cwd to current file
vim.keymap.set("n", "<leader>pw", ":pwd<CR>") -- check cwd
vim.keymap.set("n", "<C-s>", ":w<CR>") -- save file
vim.keymap.set("n", "m", "x")
vim.keymap.set("n", "M", "X")

-- Insert mode shortcuts
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

-- change update time for CursorHold events
vim.opt.updatetime = 2000

-- stop annoying TODO highlights
-- vim.api.nvim_set_hl(0, "Todo", { link = "Comment" })
vim.api.nvim_set_hl(0, "vhdlTodo", { link = "vhdlComment" })
