return {
  -- Add Nvim-R
  {
    "jalvesaq/Nvim-R",
    keys = { { "<leader>bf", cmd = "Start Nvim-R" } }, -- Corrected key mapping
    ft = { "r", "rmd" },
    cmd = { "R" }, -- Ensure this is a table
    config = function()
      -- Display a message when the plugin is loaded
      print("Nvim-R plugin is initialized")
    end,
  },
}
