local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig["clangd"].setup{
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  cmd = {
     "clangd",
    "--background-index",
    "--pch-storage=memory",
    "--suggest-missing-includes",
    "--inlay-hints",
    "--completion-style=detailed",
    "--offset-encoding=utf-16", --temporary fix for null-ls
    "-j=4"
  },
  filetypes = {"c", "cpp", "cxx", "h", "hpp", "hxx", "txx"}
}

lspconfig["pyright"].setup{
  on_attach = on_attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
}

