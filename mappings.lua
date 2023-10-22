---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-c>"] = { '"+y', "Copy to clipboard", opts = { noremap = true } },
    ["<C-a>"] = { "ggVG", "Block all", opts = { noremap = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  x = {
    ["<C-c>"] = { '"+y', "Copy to clipboard", opts = { noremap = true } },
    ["<C-v>"] = { "<C-r>+", "Paste from clipboard", opts = { noremap = true }}
  },
  i = {
    ["<C-v>"] = { "<C-r>+", "Paste from clipboard", opts = { noremap = true }}
  }
}

-- more keybinds!

return M
