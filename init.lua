---------------------------------------------------------------------
-- Neovim entry point
-- Keeps init.lua tiny; real config lives in lua/
---------------------------------------------------------------------
-- Core
require("core.basics")
require("core.options")
require("core.autocmds")
-- Keymaps
require("keymaps")

-- Plugins
require("plugins.lazy")


