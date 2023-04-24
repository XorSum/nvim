
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- require('bufferline').setup()
require("nvim-tree").setup()
require('plugins/bufferline')
require('lualine').setup()
require("nvim-web-devicons").setup{}
