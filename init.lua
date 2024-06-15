require("config.lazy")
require("plugins.ncm-R")
require("plugins.cmp-r")
require("plugins.r-nvim")
-- setup language server
require("lspconfig").rlanguage_server.setup({})

vim.cmd([[colorscheme sorbet]])
