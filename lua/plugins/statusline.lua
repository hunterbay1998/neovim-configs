---------------------------------------------------------------------
-- Statusline: lualine
---------------------------------------------------------------------

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        section_separators = "",
        component_separators = "│",
      },
    })
  end,
}
