-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local nvlsp = require "nvchad.configs.lspconfig"

-- local servers = { "html", "cssls" }
-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end

lspconfig.lua_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

lspconfig.clangd.setup{
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
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

lspconfig.pyright.setup{
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  flags = {
    debounce_text_changes = 150,
  },
}
