return {
    "github/copilot.vim",
    config = function()
        vim.g.copilot_assume_mapped = true
        vim.cmd("silent! Copilot disable")
    end,
}
