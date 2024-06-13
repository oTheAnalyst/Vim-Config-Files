return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      -- R language server setup
      lspconfig.r_language_server.setup({
        -- Optional: add settings for the R language server here
      })
      -- Texlab setup for LaTeX
      lspconfig.texlab.setup({
        -- Optional: add settings for the Texlab language server here
        -- For example, customizing on_attach, capabilities, settings, etc.
      })
      -- SQLs setup for SQL
      lspconfig.sqls.setup({
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
