---------------------------------------------------------------------
-- LSP (Bash) - Neovim 0.11+ compatible
---------------------------------------------------------------------

return {
  "neovim/nvim-lspconfig",
  config = function()
    local opts = {}

    -- Neovim 0.11+ (new API)
    if vim.lsp.config and vim.lsp.enable then
      vim.lsp.config("bashls", opts)
      vim.lsp.enable("bashls")
      return
    end

    -- Older Neovim fallback
    require("lspconfig").bashls.setup(opts)
  end,
}
