-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- config/autocmds.lua
local autocomplete_group = vim.api.nvim_create_augroup("vimrc_autocompletion", { clear = true })

vim.api.nvim_command("autocmd BufWritePre *.R :%s/\\s\\+$//e")

local cmp = require("cmp")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    cmp.setup.buffer({
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "buffer" },
        { name = "luasnip" },
      },
    })
  end,
  group = autocomplete_group,
})
