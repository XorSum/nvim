
-- 保存本地变量
local map = vim.api.nvim_set_keymap
-- local opt = {noremap = true, silent = true }
local opt = {noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

map('n', '<SPACE>', '<Nop>', opt)
-- leader key 设置为 空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)


-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s.", ":vertical resize +20<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)


-- nvimTree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)


-- 窗口移动
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-l>', '<C-w>l', opt)


-- 全选复制粘贴

map('n', '<C-a>', '<esc>ggVG<CR>', opt)
map('v', '<C-c>', '"+y', opt)
map('n', '<C-v>', '"+p', opt)


map('n', '<leader>h', ':BufferLineCyclePrev<CR>', opt)
map('n', '<leader>l', ':BufferLineCycleNext<CR>', opt)


-- tegescope 搜索
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})





