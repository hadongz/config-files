---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["C-h"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["C-l"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["C-j"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["C-k"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
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
