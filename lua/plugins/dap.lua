local dap = require("dap")
local ui = require("dapui")


-- Key mappings
vim.keymap.set("n", "<F1>", function () dap.continue() end, { desc = "Start debugging" })
vim.keymap.set("n", "<F2>", function () dap.step_into() end, { desc = "Step into" })
vim.keymap.set("n", "<F3>", function () dap.step_over() end, { desc = "Step over" })
vim.keymap.set("n", "<F4>", function () dap.step_out() end, { desc = "Step out" })
vim.keymap.set("n", "<leader>b", function () dap.toggle_breakpoint() end, { desc = "Toggle breakpoint" })

-- UI
ui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    ui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    ui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    ui.close()
end

