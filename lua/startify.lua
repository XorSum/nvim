
-- https://alpha2phi.medium.com/neovim-for-beginners-lua-autocmd-and-keymap-functions-3bdfe0bebe42
-- https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/core/autocmds.lua


local api = vim.api

api.nvim_create_autocmd(
  "VimEnter",
  { pattern = "*",
    command = " if !argc() | Startify | NvimTreeToggle | wincmd p | endif"
  }
)

