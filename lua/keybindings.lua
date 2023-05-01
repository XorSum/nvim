
-- https://www.reddit.com/r/neovim/comments/sng5jy/how_do_you_decide_keybindings_to_use_for_things/
-- https://gist.github.com/JSchrtke/cabd3e42a6920ef1f0835bd7ae286aad

local wk = require("which-key")
t = require('telescope.builtin')
t_ext = require('telescope').extensions



-- Normal mode, no <leader> prefix
wk.register({
    ["K"] = {function() vim.lsp.buf.hover() end, "go to definition"},
    ["gD"] = {function() vim.lsp.buf.definition() end, "go to definition"},
    ["gi"] = {function() vim.lsp.buf.implementation() end, "go to implementation"},
    ["gr"] = {function() vim.lsp.buf.references() end, "go to references"},
    ["gds"] = {function() vim.lsp.buf.document_symbol() end, "go to document_symbol"},
    ["gws"] = {function() vim.lsp.buf.workspace_symbol() end, "go to workspace_symbol"},
    ["gt"] = {"next tab"},
    ["gT"] = {"previous tab"},
    ["[c"] = { function() vim.diagnostic.goto_prev({ wrap = false }) end, "diagnostic.goto_prev"},
    ["]c"] = { function() vim.diagnostic.goto_next({ wrap = false }) end, "diagnostic.goto_next"},
})


-- Normal mode, <leader> prefix
wk.register({
  ["<leader>"] = {
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

    -- all workspace
    a = {
        name = "all workspace",
        a = {function() vim.diagnostic.setqflist() end, "all workspace diagnostics"},
        e = {function() vim.diagnostic.setqflist({ severity = "E" }) end, "all workspace errors"},
        w = {function() vim.diagnostic.setqflist({ severity = "W" }) end, "all workspace warnings"},
    },

    ["cl"] = {function() vim.lsp.codelens.run() end  ,"codelens" },
    ["ca"] = {function() vim.lsp.buf.code_action() end  ,"code action" },

    -- nvim-dap
    d = {
        -- Example mappings for usage with nvim-dap. If you don't use that, you can skip these.
        name = "nvim-dap",
        c = {function() require("dap").continue() end , "continue"},
        r = {function() require("dap").repl.toggle() end ,"repl toggle"},
        K = {function() require("dap.ui.widgets").hover() end ,"ui widgets hover"},
        t = {function() require("dap").toggle_breakpoint() end ,"toogle beakpoint"},
        so = {function() require("dap").step_over() end ,"step over"},
        si = {function() require("dap").step_into() end ,"step into"},
        l = {function() require("dap").run_last() end ,"run last"},
    },

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
      d = {function() vim.diagnostic.setloclist() end, "buffer diagnostics only"},
    },

    -- find, 搜索, tegescope
    f = {
        name = "+find",
        f = {function() t.current_buffer_fuzzy_find() end, "in file"},
        -- for syntax documentation see https://docs.rs/regex/1.5.4/regex/#syntax
        d = {function() t.live_grep() end, "in directory"},
        w = {function() t.grep_string() end, "word"},
        s = {function() t.lsp_document_symbols() end, "document symbols"},
        S = {function() t.lsp_workspace_symbols() end, "workspace symbols"},
        q = {function() t.quickfix() end, "in quickfix list"},
        h = {function() t.help_tags() end, "in help"},
        r = {function() t.lsp_references() end, "references"},
        t = {function() t_ext.todo.todo() end, "todos"},
    },


    -- window
    w = {
        name = "+window",
        h = {"<cmd>vsplit<CR>", "split left"},
        j = {"<cmd>split<bar>wincmd j<CR>", "split down"},
        k = {"<cmd>split<CR>", "split up"},
        l = {"<cmd>vsplit<bar>wincmd l<CR>", "split right"},
        p = {function() require('nvim-window').pick() end, "pick window"},
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

    ["sh"] = {function() vim.lsp.buf.signature_help() end,"signature help"},
    ["rn"] = {function() vim.lsp.buf.rename() end,"rename"},
    -- ["mhws"] = {function() require("metals").hover_worksheet() end,""},
    
  }
})


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









