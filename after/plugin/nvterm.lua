require("nvterm").setup({
    terminals = {
        shell = vim.o.shell,
        list = {},
        type_opts = {
            float = {
                relative = "editor",
                row = 0.05,
                col = 0.05,
                width = 0.9,
                height = 0.8,
                border = "single"
            },
            horizontal = { location = "rightbelow", split_ratio = 0.05 },
            vertical = { location = "rightbelow", split_ratio = 0.1 },
        }
    },
    behaviour = {
        autoclose_on_quit = {
            enabled = false,
            confirm = true
        },
        close_on_exit = true,
        auto_insert = true
    }
})

local term = require("nvterm.terminal")

vim.keymap.set("n", "<leader>t", function() term.toggle("float") end, {})
vim.keymap.set("t", "<C-q>", function() term.toggle("float") end, {})
vim.keymap.set("t", "<A-q>", term.close_all_terms, {})
