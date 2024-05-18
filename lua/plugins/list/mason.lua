return {
    "williamboman/mason.nvim",
    -- HACK try to configure mason_lspconfig this before lsp is configured
    lazy = false,
    priority = 1000,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({})

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "pyright",
            },
        })
        mason_tool_installer.setup({
            ensure_installed = {
                "stylua",
                "black",
                "pylint",
            },
            integrations = {
                ["mason-lspconfig"] = true,
                ["mason-null-ls"] = true,
                ["mason-nvim-dap"] = true,
            },
        })
    end,
}
