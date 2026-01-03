---------------------------------------------------------------------
-- LSP (Bash, JSON, CSS) - Neovim 0.11+ compatible
---------------------------------------------------------------------

return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" }, -- Add this dependency
  config = function()
    -- Create "capabilities" that tell the LSP we want autocompletion
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local opts = { capabilities = capabilities }

    -- Neovim 0.11+ (new API)
    if vim.lsp.config and vim.lsp.enable then
      vim.lsp.config("bashls", opts)
      vim.lsp.config("jsonls", opts)
      vim.lsp.config("cssls", opts)

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

