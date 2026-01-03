---------------------------------------------------------------------
-- LSP (Bash, JSON, CSS) - Neovim 0.11+ compatible
---------------------------------------------------------------------

return {
  "neovim/nvim-lspconfig",
  config = function()
    local opts = {}

    -- Neovim 0.11+ (new API)
    if vim.lsp.config and vim.lsp.enable then
      -- Configure servers
      vim.lsp.config("bashls", opts)
      vim.lsp.config("jsonls", opts)
      vim.lsp.config("cssls", opts)

      -- Enable servers
      vim.lsp.enable("bashls")
      vim.lsp.enable("jsonls")
      vim.lsp.enable("cssls")

      return
    end

    -- Older Neovim fallback
    local lspconfig = require("lspconfig")
    lspconfig.bashls.setup(opts)
    lspconfig.jsonls.setup(opts)
    lspconfig.cssls.setup(opts)
  end,
}

