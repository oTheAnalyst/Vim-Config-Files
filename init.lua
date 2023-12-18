-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.Nvim-R")
require("plugins.ncm-R")
require("plugins.open-browser")
require("plugins.vimtex")
require("plugins.tokyonight")
require("lspconfig").r_language_server.setup({})
require("lspconfig").texlab.setup({})

vim.o.clipboard = "unnamedplus"
vim.cmd([[colorscheme tokyonight-night]])

vim.g.vimtex_view_method = "zathura"

local function insert_data_report_template()
  local template_path = "/home/pretender/LaTeX/templates/data_analysis_template.tex" -- Replace with your actual full path
  local lines = vim.fn.readfile(template_path)
  if #lines == 0 then
    print("Template file not found: " .. template_path)
    return
  end
  vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
end

vim.api.nvim_create_user_command("DataReportTemplate", insert_data_report_template, {})
