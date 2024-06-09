return {
  -- ncm2 - base completion engine
  {
    "ncm2/ncm2",
    lazy = true, -- Load on startup as it's a core completion engine
    -- Additional ncm2 configuration here
  },
  -- ncm-R - R language support for ncm2
  {
    "gaalcaras/ncm-R",
    ft = { "r", "rmd", "R", "Rmd" }, -- Lazy load for R and R Markdown files
    requires = { "ncm2/ncm2" }, -- Ensure ncm2 is loaded with it
  },
  -- Other plugin configurations...
}
