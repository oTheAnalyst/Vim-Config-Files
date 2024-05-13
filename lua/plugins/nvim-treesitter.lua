require("nvim-treesitter.configs").setup({
  ensure_installed = { "r", "markdown", "rnoweb" },
  highlight = { enable = true },
  indent = { enable = true },
  autopairs = { enable = true },
  textobjects = {
    select = { enable = true },
    swap = { enable = true },
    move = { enable = true },
    lsp_interop = { enable = true },
  },
})
