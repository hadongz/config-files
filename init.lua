local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  if not directory and not no_name then
    return
  end

  if directory then
    -- change to the directory
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require("nvim-tree.api").tree.open()
end

local function transparent_background()
  vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
  vim.cmd "hi NonText guibg=NONE ctermbg=NONE"
  vim.cmd "hi NvimTreeNormalNC guibg=NONE ctermbg=NONE"
  vim.cmd "hi NvimTreeNormal guibg=NONE ctermbg=NONE"
  vim.cmd "hi NvimTreeCursorLine guibg=NONE ctermbg=NONE"
end

local function vim_enter(data)
  open_nvim_tree(data)
  transparent_background()
end

autocmd({ "VimEnter" }, { callback = vim_enter })
