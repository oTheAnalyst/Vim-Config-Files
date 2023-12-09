-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.Nvim-R")
require("plugins.ncm-R")
require("plugins.open-browser")
require("plugins.vimtex")
require("lspconfig").r_language_server.setup({})

vim.o.clipboard = "unnamedplus"
