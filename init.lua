

require("basic")
require("plugins")

require('plugin-config/theme-tokyonight')
require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('lualine').setup()
require('telescope').setup{}
require('plugin-config/which-key')
require('startify')
-- require('plugin-config/nvim-metals')
require('plugin-config/nvim-lspconfig')
require('plugin-config/nvim-cmp')
require('plugin-config/nvim-treesitter')
-- require('plugin-config/nvim-dap')

require("nvim-web-devicons").setup{}

require("keybindings")




