
-- https://www.reddit.com/r/neovim/comments/sng5jy/how_do_you_decide_keybindings_to_use_for_things/
-- https://gist.github.com/JSchrtke/cabd3e42a6920ef1f0835bd7ae286aad

local wk = require("which-key")
t = require('telescope.builtin')
t_ext = require('telescope').extensions

-- Normal mode, no <leader> prefix
wk.register({
    ["K"] = {"<cmd>lua vim.lsp.buf.hover<CR>", "go to definition"},
    ["gD"] = {"<cmd>lua vim.lsp.buf.definition()<CR>", "go to definition"},
    ["gi"] = {"<cmd>lua vim.lsp.buf.implementation()<CR>", "go to implementation"},
    ["gr"] = {"<cmd>lua vim.lsp.buf.references()<CR>", "go to references"},
    ["gds"] = {"<cmd>lua vim.lsp.buf.document_symbol()<CR>", "go to document_symbol"},
    ["gws"] = {"<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", "go to workspace_symbol"},
    ["gt"] = {"next tab"},
    ["gT"] = {"previous tab"},
})


-- Normal mode, <leader> prefix
wk.register({
    -- ignored keys
    ["1"] = "which_key_ignore",
    ["2"] = "which_key_ignore",
    ["3"] = "which_key_ignore",
    ["4"] = "which_key_ignore",
    ["5"] = "which_key_ignore",
    ["6"] = "which_key_ignore",
    ["7"] = "which_key_ignore",
    ["8"] = "which_key_ignore",
    ["9"] = "which_key_ignore",

    ["<cr>"] = {"<cmd>Ttoggle<CR>", "toggle terminal"},

    -- file explorer, 文件浏览器, NvimTree
    e = { ":NvimTreeToggle<CR>", "File Explorer"},

    -- 在窗口间移动
    h = {"<cmd>wincmd h<CR>", "move left"},
    j = {"<cmd>wincmd j<CR>", "move down"},
    k = {"<cmd>wincmd k<CR>", "move up"},
    l = {"<cmd>wincmd l<CR>", "move right"},

    -- Buffer
    b = {
      name = "+buffer",
      h = {':BufferLineCyclePrev<CR>', "move to previous buffer"},
      l = {':BufferLineCycleNext<CR>', "move to next buffer"},
    },

    -- find, 搜索, tegescope
    f = {
        name = "+find",
        f = {"<cmd>lua t.current_buffer_fuzzy_find()<CR>", "in file"},
        -- for syntax documentation see https://docs.rs/regex/1.5.4/regex/#syntax
        d = {"<cmd>lua t.live_grep()<CR>", "in directory"},
        w = {"<cmd>lua t.grep_string()<CR>", "word"},
        s = {"<cmd>lua t.lsp_document_symbols()<CR>", "document symbols"},
        S = {"<cmd>lua t.lsp_workspace_symbols()<CR>", "workspace symbols"},
        q = {"<cmd>lua t.quickfix()<CR>", "in quickfix list"},
        h = {"<cmd>lua t.help_tags()<CR>", "in help"},
        r = {"<cmd>lua t.lsp_references()<CR>", "references"},
        t = {"<cmd>lua t_ext.todo.todo()<CR>", "todos"},
    },


     -- window
    w = {
        name = "+window",
        h = {"<cmd>vsplit<CR>", "split left"},
        j = {"<cmd>split<bar>wincmd j<CR>", "split down"},
        k = {"<cmd>split<CR>", "split up"},
        l = {"<cmd>vsplit<bar>wincmd l<CR>", "split right"},
        p = {"<cmd>lua require('nvim-window').pick()<CR>", "pick window"},
        r = {"<cmd>WinResizerStartResize<CR>", "resize mode"},
        e = {"<cmd>wincmd =<CR>", "equalize size"},
        m = { "<cmd>WinShift<CR>", "toggle window move mode"},
        s = { "<cmd>WinShift swap<CR>", "toggle window swap mode"},
        z = {"<cmd>ZenMode<CR>", "toggle zen mode"},
        t = {"<cmd>wincmd T<CR>", "breakout into new tab"},
    },

         -- terminal
    t = {
        name = "+terminal",
        c = {"<cmd>T clear<CR>", "clear"},
    },







}, { prefix = "<leader>"})




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


-- 全选复制粘贴

map('n', '<C-a>', '<esc>ggVG<CR>', opt)
map('v', '<C-c>', '"+y', opt)
map('n', '<C-v>', '"+p', opt)









