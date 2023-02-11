vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

vim.api.nvim_set_hl(0, 'PMenu', { fg = "#ffffff", bg = "#333333" })

-- highlight yanked text for 200ms using the "Visual" highlight group
--vim.cmd [[
--  augroup highlight_yank
--  autocmd!
--  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
--  augroup END
--]]
