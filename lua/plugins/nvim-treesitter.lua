require("nvim-treesitter.configs").setup({
  ensure_installed = { "r", "markdown", "rnoweb" }, -- Ensure these languages are installed
  highlight = { enable = true }, -- Enable syntax highlighting
  indent = { enable = true }, -- Enable automatic indentation
  autopairs = { enable = true }, -- Enable autopairs plugin integration
  textobjects = {
    select = { enable = true }, -- Enable text objects selection
    swap = { enable = true }, -- Enable text objects swapping
    move = { enable = true }, -- Enable text objects moving
    lsp_interop = { enable = true }, -- Enable LSP integration with text objects
  },
})
