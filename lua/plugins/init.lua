return {
    -- autoclose
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end
    },
    -- cmp
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        }
    },
    -- file tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        }
    },
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
    -- terminal
    {
        "NvChad/nvterm"
    },
    -- theme
    {
        "RRethy/nvim-base16",
        config = function()
            require('base16-colorscheme').setup({
                base00 = '#16161D', base01 = '#2c313c', base02 = '#3e4451', base03 = '#6c7891',
                base04 = '#565c64', base05 = '#abb2bf', base06 = '#9a9bb3', base07 = '#c5c8e6',
                base08 = '#e06c75', base09 = '#d19a66', base0A = '#e5c07b', base0B = '#98c379',
                base0C = '#56b6c2', base0D = '#0184bc', base0E = '#c678dd', base0F = '#a06949',
            })
        end
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
