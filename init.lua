

require("basic")
require("plugins")

require('plugin-config/theme-tokyonight')
require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('lualine').setup()
require('telescope').setup{}
require('plugin-config/dressing')


require('plugin-config/which-key')
require('startify')
-- require('plugin-config/nvim-metals')
-- require("mason").setup()

require("plugin-config/null-ls")

require("dapui").setup()

require("plugin-config/mason")
require("mason-lspconfig").setup()
require('plugin-config/nvim-lspconfig')
require('plugin-config/nvim-cmp')
require('plugin-config/nvim-treesitter')
-- require('plugin-config/nvim-dap')

require("nvim-web-devicons").setup{}
require("keybindings")




