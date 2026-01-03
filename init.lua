---------------------------------------------------------------------
-- Neovim basic settings
---------------------------------------------------------------------

-- Leader key (used for custom shortcuts later)
vim.g.mapleader = " "

-- Use the system clipboard (Wayland / wl-clipboard)
-- This makes y / p copy & paste to your OS clipboard
vim.opt.clipboard = "unnamedplus"

---------------------------------------------------------------------
-- Bootstrap lazy.nvim (plugin manager)
---------------------------------------------------------------------

-- Location where lazy.nvim will be installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Auto-install lazy.nvim if it’s not already present
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Add lazy.nvim to Neovim's runtime path
vim.opt.rtp:prepend(lazypath)

---------------------------------------------------------------------
-- Plugins
---------------------------------------------------------------------

require("lazy").setup({

  -------------------------------------------------------------------
  -- Treesitter: better syntax highlighting & parsing
  -------------------------------------------------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Update parsers after install/update
    config = function()
      require("nvim-treesitter.config").setup({
        -- Languages to install parsers for
        ensure_installed = {
          "lua",
          "json",
          "bash",
        },

        -- Enable Treesitter-based syntax highlighting
        highlight = {
          enable = true,
        },
      })
    end,
  },

})




---------------------------------------------------------------------
-- Keymaps
---------------------------------------------------------------------

-- Do not copy deleted text into clipboard (black hole register)
vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "D", '"_D', { noremap = true, silent = true })

-- Optional: also prevent x from copying
vim.keymap.set({ "n", "v" }, "x", '"_x', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "X", '"_X', { noremap = true, silent = true })


