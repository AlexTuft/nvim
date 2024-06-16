return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
            },
        })

        vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open file [e]xplorer" })
    end,
}
