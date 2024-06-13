require("config.lazy")
require("plugins.ncm-R")
require("plugins.cmp-r")
require("plugins.r-nvim")
-- setup language server
require("lspconfig").rlanguage_server.setup({
  cmd = { "R", "--slave", "-e", "languageserver::run()" },
  filetypes = { "r", "rmd" },
  settings = {
    r = {
      lsp = {
        diagnostics = false,
      },
    },
  },
})
