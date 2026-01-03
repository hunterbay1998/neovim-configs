---------------------------------------------------------------------
-- Neovim entry point
-- Keeps init.lua tiny; real config lives in lua/
---------------------------------------------------------------------

-- Core
require("core.basics")
require("core.keymaps")

-- Plugins
require("plugins.lazy")
