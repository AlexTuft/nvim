require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    sort_by = "case_sensetive",
    hijack_directories = {
        auto_open = false
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
    view = {
        width = 30
    },
    filters = {
        dotfiles = true
    }
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle) -- Open file tree
