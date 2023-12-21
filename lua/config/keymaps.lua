-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-m>", "<Space>%>%<Space>", { desc = "Pipe Operator" })
--httpgd short cut for browser
vim.keymap.set("n", "<leader>hb", ':call SendToR("httpgd::hgd_browse()")<CR>', { desc = "Httpgd Server Activated" })
