---------------------------------------------------------------------
-- Autocommands
---------------------------------------------------------------------

-- Highlight text briefly after yanking (copying)
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})
