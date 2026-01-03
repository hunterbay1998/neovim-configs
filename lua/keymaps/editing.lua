---------------------------------------------------------------------
-- Editing keymaps
---------------------------------------------------------------------

-- Don’t overwrite clipboard when deleting
vim.keymap.set({ "n", "v" }, "d", '"_d', { silent = true })
vim.keymap.set({ "n", "v" }, "D", '"_D', { silent = true })
vim.keymap.set({ "n", "v" }, "x", '"_x', { silent = true })
vim.keymap.set({ "n", "v" }, "X", '"_X', { silent = true })
