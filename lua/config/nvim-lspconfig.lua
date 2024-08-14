return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- R language server setup
      require("lspconfig")["r_language_server"].setup({
        -- Optional: add settings for the R language server here
      })
      -- Texlab setup for LaTeX
      require("lspconfig")["texlab"].setup({
        -- Optional: add settings for the Texlab language server here
        -- For example, customizing on_attach, capabilities, settings, etc.
      })
      require("lspconfig")["nixd"].setup({
        -- Optional setup
      })

      -- SQLs setup for SQL
      require("lspconfig").sqls.setup({
        settings = {
          sqls = {
            connections = {
              {
                driver = "sqlite3",
                dataSourceName = "/home/pretender/workbook/citrixuserdata.db",
              },
              {
                driver = "sqlite3",
                dataSourceName = "/home/pretender/workbook/Disaster_Data.db",
              },
              {
                driver = "sqlite3",
                dataSourceName = "/home/pretender/workbook/trade_union_data.db",
              },
            },
          },
        },
      })
    end,
  },
}
