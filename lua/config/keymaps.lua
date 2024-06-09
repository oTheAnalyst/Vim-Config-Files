-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "MM", "<Space>|>", { desc = "Pipe Operator" })
vim.keymap.set("i", "<C-Tab>", "()", { desc = "Paratheses" })
--httpgd short cut for browser
vim.keymap.set("n", "<leader>hb", ':call SendToR("httpgd::hgd_browse()")<CR>', { desc = "Httpgd Server Activated" })

vim.api.nvim_set_keymap(
  "n",
  "<M-0>",
  "o<ESC>i```{r}<CR>```<ESC>",
  { noremap = true, silent = true, desc = "Insert text block" }
)
