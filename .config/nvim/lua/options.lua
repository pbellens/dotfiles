require "nvchad.options"

vim.wo.relativenumber = true

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.listchars:append{trail = "-", eol = "↵"}
vim.opt.list = true

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
