require("nvim-treesitter.configs").setup({
  ensure_installed = { "r", "markdown", "rnoweb" }, -- List of languages to install parsers for
  highlight = {
    enable = true, -- Enable Treesitter's syntax highlighting
  },
  indent = {
    enable = true, -- Enable Treesitter's indent support
  },
  autopairs = {
    enable = true, -- Enable Treesitter's autopairs support
  },
  textobjects = {
    select = {
      enable = true, -- Enable Treesitter's textobjects support for selection
    },
    swap = {
      enable = true, -- Enable Treesitter's textobjects support for swapping
    },
    move = {
      enable = true, -- Enable Treesitter's textobjects support for moving
    },
    lsp_interop = {
      enable = true, -- Enable Treesitter's textobjects support for lsp interop
    },
  },
})
