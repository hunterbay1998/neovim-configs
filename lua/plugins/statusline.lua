---------------------------------------------------------------------
-- Statusline: lualine (clean + calm)
---------------------------------------------------------------------

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "tokyonight",
        icons_enabled = true,
        globalstatus = true,
        section_separators = "",
        component_separators = "│",
        disabled_filetypes = { statusline = { "neo-tree", "NvimTree", "dashboard" } },
      },
      sections = {
        lualine_a = { { "mode", fmt = function(s) return s:sub(1, 1) end } },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1, symbols = { modified = " ●", readonly = " " } } },
        lualine_x = { { "diagnostics" }, "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}

