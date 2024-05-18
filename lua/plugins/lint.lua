local lint = require("lint")

lint.linters_by_ft = {}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    group = lint_augroup,
    callback = lint.try_lint,
})

vim.keymap.set({ "n" }, "<leader>l", lint.try_lint, { desc = "Lint" })
