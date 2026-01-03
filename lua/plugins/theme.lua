---------------------------------------------------------------------
-- Theme: Tokyo Night
---------------------------------------------------------------------

return {
  "folke/tokyonight.nvim",
  priority = 1000, -- load before most other plugins
  config = function()
    -- Optional: pick a style: "night", "storm", "moon", "day"
    vim.g.tokyonight_style = "night"

    vim.cmd.colorscheme("tokyonight")
  end,
}
