-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.Nvim-R")
require("plugins.ncm-R")
require("plugins.open-browser")
require("plugins.vimtex")
require("plugins.tokyonight")
require("plugins.vim-dadbod")
require("plugins.nvim-cmp")
require("lspconfig").r_language_server.setup({})
require("lspconfig").texlab.setup({})
require("lspconfig").sqls.setup({
  cmd = { "/home/pretender/go/bin/sqls", "-config", "/home/pretender/.sqls.yaml" }, -- Adjust the path to sqls as per your installation
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
-- Add your specific configuration for sqls here
vim.g.R_rconsole_split = "vertical right"

vim.o.clipboard = "unnamedplus"
vim.cmd([[colorscheme tokyonight-night]])

vim.g.vimtex_view_method = "zathura"

local function insert_data_report_template()
  local template_path = "/home/pretender/LaTeX/templates/data_analysis_template.tex"
  local lines = vim.fn.readfile(template_path)
  if #lines == 0 then
    print("Template file not found: " .. template_path)
    return
  end
  vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
end

vim.api.nvim_create_user_command("DataReportTemplate", insert_data_report_template, {})

local function RmdTemplate()
  local template_path = "/home/pretender/LaTeX/templates/arxiv.Rmd"
  local lines = vim.fn.readfile(template_path)
  if #lines == 0 then
    print("Template file not found: " .. template_path)
    return
  end
  vim.api.nvim_buf_set_lines(0, 0, 0, false, lines)
end

vim.api.nvim_create_user_command("Rmd", RmdTemplate, {})

-- Check if GUI is running or if termguicolors is enabled
if vim.fn.has("gui_running") == 1 or vim.o.termguicolors then
  -- Define colors for different types of content
  vim.g.rout_color_input = "guifg=#9e9e9e"
  vim.g.rout_color_normal = "guifg=#ff5f00"
  -- ... Add all the other color definitions here ...
  vim.g.rout_color_error = "guifg=#ffffff guibg=#c40000"
elseif vim.o.t_Co == "256" then
  -- For 256-color terminals
  vim.g.rout_color_input = "ctermfg=247"
  vim.g.rout_color_normal = "ctermfg=39"
  -- ... Add all the other 256-color definitions here ...
end

-- To have R output highlighted using the current colorscheme
vim.g.rout_follow_colorscheme = 1

vim.g.tar_browser = "brave"
