local opt = vim.opt
-- utf8
vim.g.encoding = "UTF-8"
opt.fileencoding = 'UTF-8'
-- jk移动时光标下上方保留8行
opt.scrolloff = 8
opt.sidescrolloff = 8
-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "0"
-- >> << 时移动长度
opt.shiftwidth = 4
-- 缩进2个空格等于一个Tab
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftround = true
-- 新行对齐当前行，空格替代tab
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
-- 搜索大小写不敏感，除非包含大写
opt.ignorecase = true
opt.smartcase = true
-- 搜索不要高亮
opt.hlsearch = false
-- 边输入边搜索
opt.incsearch = true
-- 使用增强状态栏后不再需要 vim 的模式提示
opt.showmode = false
-- 命令行高为2，提供足够的显示空间
opt.cmdheight = 0
-- 当文件被外部程序修改时，自动加载
opt.autoread = true
vim.bo.autoread = true
-- 禁止折行
opt.wrap = false
vim.wo.wrap = false
-- 行结尾可以跳到下一行
opt.whichwrap = 'b,s,<,>,[,],h,l'
-- 允许隐藏被修改过的buffer
opt.hidden = true
-- 鼠标支持
opt.mouse = "a"
-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false
-- smaller updatetime 
opt.updatetime = 300
-- 等待mappings
opt.timeoutlen = 200
-- split window 从下边和右边出现
opt.splitbelow = true
opt.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
opt.background = "dark"
opt.termguicolors = true
opt.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
opt.list = true
--opt.listchars = "space:·,tab:oooo"
--opt.listchars = "tabline:uuuu"
-- 补全增强
opt.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
-- opt.shortmess = opt.shortmess .. 'c'
opt.pumheight = 10
-- always show tabline
opt.showtabline = 2
