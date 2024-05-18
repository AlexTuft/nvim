return {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Useful status updates for LSP
        -- NOTE: `opts = {}` is the same as calling `require("fidget").setup({})`
        { "j-hui/fidget.nvim", tag = "legacy", opts = {} },

        -- Additional lua configuration, makes nvim stuff amazing!
        "folke/neodev.nvim",
    },
    config = function()
        require("plugins.lsp")
    end,
}
