vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file [e]xplorer" })

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<leader><leader>c", function()
    vim.cmd("colorscheme aplab")
end)
