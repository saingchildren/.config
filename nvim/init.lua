require('sic.base')
require('sic.map')
require('sic.highlight')
require('sic.packer')
require('sic.plugin.telescope')
require('sic.plugin.autopairs')
require('sic.plugin.cmp')
require('sic.plugin.lspconfig')
require('sic.plugin.lspkind')
require('sic.plugin.lualine')
require('sic.plugin.mason')
require('sic.plugin.neosolarized')
require('sic.plugin.treesitter')
require('sic.plugin.ts-autotag')
require('sic.plugin.lspsaga')
require('sic.plugin.web-devicon')
require("sic.plugin.markdown")
require'lspconfig'.pyright.setup{}
require('rest-nvim').setup()
require("sic.plugin.colorizer")
require'lspconfig'.volar.setup{
  filetypes = {"vue"}
}
vim.g.OmniSharp_server_stdio = 1
vim.g.OmniSharp_auto_start = 1
vim.g.OmniSharp_highlight_types = 1
vim.g.OmniSharp_highlight_functions = 1
vim.g.OmniSharp_popup_position = 'peek'
