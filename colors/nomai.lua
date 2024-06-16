local hsl = require("theme.utils").hsl

vim.cmd("highlight clear")
vim.g.colors_name = "nomai"
vim.opt.cursorline = true

require("base16-colorscheme").setup({
    base00 = hsl(239, 0.15, 0.15),
    base01 = hsl(239, 0.15, 0.10),
    base02 = hsl(239, 0.15, 0.10),
    base03 = hsl(223, 0.22, 0.35),
    base04 = hsl(223, 0.22, 0.45),
    base05 = hsl(254, 0.59, 0.71),
    base06 = "#ffff00",
    base07 = "#ffff00",
    base08 = hsl(219, 0.14, 0.71),
    base09 = hsl(15, 0.72, 0.44),
    base0A = hsl(27, 0.93, 0.55),
    base0B = hsl(106, 0.37, 0.42),
    base0C = hsl(8, 0.83, 0.55),
    base0D = hsl(219, 0.14, 0.71),
    base0E = hsl(189, 0.63, 0.45),
    base0F = hsl(223, 0.22, 0.45),
})
