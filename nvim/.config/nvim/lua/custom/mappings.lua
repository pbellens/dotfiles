local M = {}

-- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- Your custom mappings
M.abc = {
  n = {
     ["<leader>fr"] = {"<cmd> Telescope resume <CR>", "Telescope resume"},
  },
}

return M
