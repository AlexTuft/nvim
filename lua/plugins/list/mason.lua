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

        -- use lspconfig names instead of mason names
        -- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
        mason_lspconfig.setup({
            ensure_installed = {
                -- c++
                "cmake",
                "clangd",
                "glsl_analyzer",
                -- lua
                "lua_ls",
                -- python
                "pyright",
            },
        })
        mason_tool_installer.setup({
            ensure_installed = {
                -- lua
                "stylua",
                -- python
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
