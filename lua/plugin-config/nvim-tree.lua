require("nvim-tree").setup({
  auto_reload_on_write = true,
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


-- vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
