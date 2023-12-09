return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require("lspconfig")["r_language_server"].setup({
        -- Optional: add settings for the R language server here
        -- For example, customizing on_attach, capabilities, etc.
      })
    end,
  },
}
