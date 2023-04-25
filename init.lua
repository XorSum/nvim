

require("basic")
require("plugins")

vim.o.background = "dark" -- or "light" for light mode
--vim.o.background = "light" -- or "light" for light mode
-- vim.cmd([[colorscheme molokai]])

require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('lualine').setup()
require("nvim-web-devicons").setup{}
require('telescope').setup{}

require("keybindings")
