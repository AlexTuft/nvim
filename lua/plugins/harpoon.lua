local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>ha", function () harpoon:list():append() end, { desc = "[A]dd file to [h]arpoon" })
vim.keymap.set("n", "<leader>hr", function () harpoon:list():remove() end, { desc = "[R]emove file to [h]arpoon" })
vim.keymap.set("n", "<leader>hc", function () harpoon:list():clear() end, { desc = "[C]clear [h]arpooned files" })
vim.keymap.set("n", "<leader>hl", function () harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[L]ist [h]arpooned files"})

for i=1,9 do
    vim.keymap.set("n", "<leader>h" .. i, function () harpoon:list():select(i) end, { desc = "Select [h]arpooned file [" .. i .. "]" })
end

vim.keymap.set("n", "<leader>hn", function () harpoon:list():next() end, { desc = "[N]ext [h]arpooned file" })
vim.keymap.set("n", "<leader>hp", function () harpoon:list():prev() end, { desc = "[P]revious [h]arpooned file" })
