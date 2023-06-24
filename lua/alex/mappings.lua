vim.g.mapleader = " "

-- File explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Clipboard Functions
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

-- Vertical motions
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Searching
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
