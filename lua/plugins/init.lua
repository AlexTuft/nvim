return {
    -- lsp
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate"
    },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            vim.cmd("TSUpdate")
        end
    },
    {
        "nvim-treesitter/playground"
    }
}
