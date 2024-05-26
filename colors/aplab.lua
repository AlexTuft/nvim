local hl = vim.api.nvim_set_hl
local hsl = require("theme.utils").hsl

local base_0 = hsl(22, 0.22, 0.10)
local base_1 = hsl(22, 0.22, 0.19)
local base_2 = hsl(22, 0.22, 0.29)
local base_3 = hsl(22, 0.22, 0.39)
local base_4 = hsl(42, 0.65, 0.47)
local base_5 = hsl(42, 0.65, 0.57)
local base_6 = hsl(42, 0.65, 0.67)
local base_7 = hsl(42, 0.65, 0.87)

local orange_1 = hsl(35, 0.8, 0.3)
local orange_2 = hsl(35, 0.8, 0.3)
local orange_3 = hsl(35, 0.8, 0.4)
local orange_4 = hsl(35, 0.8, 0.5)
local orange_5 = hsl(35, 0.8, 0.6)
local orange_6 = hsl(35, 0.8, 0.7)
local orange_7 = hsl(35, 0.8, 0.8)

local green_1 = hsl(80, 0.7, 0.2)
local green_2 = hsl(80, 0.7, 0.3)
local green_3 = hsl(80, 0.7, 0.4)
local green_4 = hsl(80, 0.7, 0.5)
local green_5 = hsl(80, 0.7, 0.6)
local green_6 = hsl(80, 0.7, 0.7)
local green_7 = hsl(80, 0.7, 0.8)

local blue_1 = hsl(192, 0.9, 0.2)
local blue_2 = hsl(192, 0.9, 0.3)
local blue_3 = hsl(192, 0.9, 0.4)
local blue_4 = hsl(192, 0.9, 0.5)
local blue_5 = hsl(192, 0.9, 0.6)
local blue_6 = hsl(192, 0.9, 0.7)
local blue_7 = hsl(192, 0.9, 0.8)

local pink_1 = hsl(320, 0.7, 0.2)
local pink_2 = hsl(320, 0.7, 0.3)
local pink_3 = hsl(320, 0.7, 0.4)
local pink_4 = hsl(320, 0.7, 0.5)
local pink_5 = hsl(320, 0.7, 0.6)
local pink_6 = hsl(320, 0.7, 0.7)
local pink_7 = hsl(320, 0.7, 0.8)

local red_1 = hsl(10, 0.7, 0.2)
local red_2 = hsl(10, 0.7, 0.3)
local red_3 = hsl(10, 0.7, 0.4)
local red_4 = hsl(10, 0.7, 0.5)
local red_5 = hsl(10, 0.7, 0.6)
local red_6 = hsl(10, 0.7, 0.7)
local red_7 = hsl(20, 0.7, 0.8)

vim.cmd("highlight clear")
vim.g.colors_name = "aplab"
vim.opt.cursorline = true

-- code
local normal_text = { fg = base_7, bg = base_0 }
hl(0, "Normal", normal_text)
hl(0, "Identifier", normal_text)
hl(0, "Label", normal_text)
hl(0, "Function", normal_text)
hl(0, "Operator", normal_text)
hl(0, "Macro", normal_text)

hl(0, "Keyword", { fg = base_4, bg = base_0 })
hl(0, "Statement", { fg = base_4, bg = base_0 })
hl(0, "Type", { fg = base_4, bg = base_0 })
hl(0, "Title", { fg = base_4, bg = base_0 })
hl(0, "Define", { fg = base_4, bg = base_0 })
hl(0, "PreProc", { fg = base_4, bg = base_0 })

local literals = { fg = green_4, bg = base_0 }
hl(0, "String", literals)
hl(0, "Number", literals)
hl(0, "Boolean", literals)

hl(0, "Comment", { fg = orange_4, bg = base_0 })
hl(0, "Todo", { fg = blue_4, bg = base_0 })

-- ui
hl(0, "NormalFloat", { fg = base_3, bg = base_1 })
hl(0, "FloatBorder", { bg = base_4 })
hl(0, "NonText", { fg = base_3, bg = base_0 })
hl(0, "LineNr", { fg = base_3, bg = base_0 })
hl(0, "CursorLineNr", { fg = base_7, bg = base_0 })
hl(0, "CursorLine", { bg = base_0 })
hl(0, "Visual", { fg = base_7, bg = base_1 })

--netrw
hl(0, "Directory", { fg = blue_5, bg = base_0 })

-- dap
vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = red_2 })
vim.api.nvim_set_hl(0, "DapLogPoint", { fg = orange_4 })
vim.api.nvim_set_hl(0, "DapStopped", { fg = green_4 })
