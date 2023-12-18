return {
  {
    "jalvesaq/Nvim-R",
    keys = { { "<leader>bf", cmd = "Start Nvim-R" } }, -- Corrected key mapping
    ft = { "r", "rmd" },
    cmd = { "R" }, -- Ensure this is a table
    config = function()
      -- Display a message when the plugin is initialized
      print("Nvim-R plugin is initialized")

      -- Auto-command to open R console when Nvim-R starts
      vim.api.nvim_create_autocmd("User", {
        pattern = "NvimRStarted",
        callback = function()
          vim.cmd("StartR")
        end,
      })
    end,
  },
}
