" 基础设置
lua require('basic')

" 按键映射
lua require('keybindings')

" 插件
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/lualine')
lua require('plugin-config/bufferline')
lua require('lsp/nvim-cmp')
" 颜色
colorscheme nord
