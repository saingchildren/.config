require('sic.base')
require('sic.map')
require('sic.highlight')
require('sic.packer')
require('sic.plugin.telescope')
require('sic.plugin.autopairs')
require('sic.plugin.cmp')
require('sic.plugin.colorizer')
require('sic.plugin.lspconfig')
require('sic.plugin.lspkind')
require('sic.plugin.lualine')
require('sic.plugin.mason')
require('sic.plugin.neosolarized')
require('sic.plugin.null-ls')
require('sic.plugin.treesitter')
require('sic.plugin.ts-autotag')
require('sic.plugin.lspsaga')
require('sic.plugin.web-devicon')
require'lspconfig'.pyright.setup{}
require('rest-nvim').setup()
require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

