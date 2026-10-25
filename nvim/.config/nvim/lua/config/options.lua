-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.ttimeoutlen = 50 --in milliseconds
vim.diagnostic.config({
  update_in_insert = false, -- Disables updating diagnostics while typing in insert mode
})
vim.lsp.log.set_level("off")
vim.lsp.config("*", {
  flags = {
    debounce_text_changes = 2000,
  },
})
