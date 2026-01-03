---------------------------------------------------------------------
-- Neovim entry point
-- Keeps init.lua tiny; real config lives in lua/
---------------------------------------------------------------------
-- Core
require("core.basics")

-- Keymaps
require("keymaps")

-- Plugins
require("plugins.lazy")

