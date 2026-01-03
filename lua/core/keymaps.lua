---------------------------------------------------------------------
-- Keymaps
---------------------------------------------------------------------

-- Do not copy deleted text into clipboard (black hole register)
vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "D", '"_D', { noremap = true, silent = true })

-- Optional: also prevent x from copying
vim.keymap.set({ "n", "v" }, "x", '"_x', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "X", '"_X', { noremap = true, silent = true })
