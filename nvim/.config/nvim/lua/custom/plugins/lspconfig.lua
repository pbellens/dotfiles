local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

<<<<<<< HEAD
lspconfig["clangd"].setup {         
  on_attach = on_attach,         
  capabilities = capabilities,         
  flags = {            
    debounce_text_changes = 150,         
  },
  cmd = {
    "clangd",
    "--background-index",
    "--suggest-missing-includes",
    "-j=4"
  },
  filetypes = {"c", "cpp", "cxx", "h", "hpp", "hxx"}
}

lspconfig["pyright"].setup {         
  on_attach = on_attach,         
  capabilities = capabilities,         
  flags = {            
    debounce_text_changes = 150,         
  },      
}
=======
   -- lspservers with default config
  local servers = { "clangd", "rust_analyzer" }
  
  lspconfig["clangd"].setup {         
    on_attach = attach,         
    capabilities = capabilities,         
    flags = {            
      debounce_text_changes = 150,         
    },
    cmd = {
      "clangd",
      "--background-index",
      "--suggest-missing-includes",
      "-j=4"
    },
    filetypes = {"c", "cpp", "cxx", "h", "hpp", "hxx"}
  }

  lspconfig["pyright"].setup {         
      on_attach = attach,         
      capabilities = capabilities,         
      flags = {            
        debounce_text_changes = 150,         
      },      
  }   
  
  -- typescript
  -- lspconfig.tsserver.setup {      on_attach = function(client, bufnr)         client.resolved_capabilities.document_formatting = false         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})      end,   }
  -- the above tsserver config will remvoe the tsserver's inbuilt formatting -- since I use null-ls with denofmt for formatting ts/js stuff.end
  
end

return M
>>>>>>> 4efafc60fd0e38092a6cee476196dc11eec7de5c
