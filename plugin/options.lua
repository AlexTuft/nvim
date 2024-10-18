-- Line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true

-- Display whitespace
vim.opt.list = true
vim.opt.listchars = {
    trail = "•",
    tab = "  ",
}

-- Disable highlight on search
vim.o.hlsearch = false

-- Sync clipboard between OS and Neovim
vim.o.clipboard = "unnamedplus"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Remove background color
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_command("highlight EndOfBuffer guibg=NONE ctermbg=NONE")

-- Set spellcheck
vim.opt.spell = true
vim.opt.spelllang = "en_us"

-- theme
vim.cmd("colorscheme base16-catppuccin-macchiato")

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", {}),
    desc = "Hightlight selection on yank",
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
    end,
})
