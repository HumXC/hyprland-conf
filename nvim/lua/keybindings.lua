vim.g.mapleader = " "

vim.g.maplocalleader= " "

local map = vim.keymap.set
local opt = {
    noremap = true, 
    silent = true,
}

-- v模式下缩进
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)
map('i', 'jj', '<esc>', opt)
-- 打开文件的选项卡操作
map("n", "<A-,>", ":BufferPrevious<CR>", opt)
map("n", "<A-.>", ":BufferNext<CR>", opt)
map("n", "<C-c>", ":BufferClose<CR>", opt)
map("n", "<C-p>", ":BufferPick<CR>", opt)

-- 代码格式化
map("n", "<S-A-f>", vim.lsp.buf.format, opt)
map("i", "<S-A-f>", vim.lsp.buf.format, opt)
-- nvim-tree的操作
map('n', '<leader>t', ':NvimTreeToggle<CR>', opt)
map('i', '<leader>t', ':NvimTreeToggle<CR>', opt)
map('v', '<leader>t', ':NvimTreeToggle<CR>', opt)
map('c', '<leader>t', ':NvimTreeToggle<CR>', opt)
-- aerial
map('n', '<{>', ':AerialPrev<CR>', opt)
map('n', '<}>', ':AerialNext<CR>', opt)
map('n', '<leader>f', ':AerialToggle<CR>', opt)
-- nvim-cmp 自动补全
pluginKeys = {}
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<S-tab>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<tab>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end



return pluginKeys
