local dap = require("dap")
local ui = require("dapui")


-- Key mappings
vim.keymap.set("n", "<F1>", function () dap.continue() end, { desc = "Start debugging" })
vim.keymap.set("n", "<F2>", function () dap.step_into() end, { desc = "Step into" })
vim.keymap.set("n", "<F3>", function () dap.step_over() end, { desc = "Step over" })
vim.keymap.set("n", "<F4>", function () dap.step_out() end, { desc = "Step out" })
vim.keymap.set("n", "<leader>b", function () dap.toggle_breakpoint() end, { desc = "Toggle breakpoint" })

-- UI
vim.fn.sign_define("DapBreakpoint", { text="", texthl="DapBreakpoint", linehl="", numhl="" })
vim.fn.sign_define("DapBreakpointCondition", { text="", texthl="DapBreakpoint", linehl="", numhl="" })
vim.fn.sign_define("DapBreakpointRejected", { text="", texthl="DapBreakpoint", linehl="", numhl= "" })
vim.fn.sign_define("DapLogPoint", { text="", texthl="DapLogPoint", linehl="", numhl= "" })
vim.fn.sign_define("DapStopped", { text="", texthl="DapStopped", linehl="", numhl= "" })

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

-- Adapters
dap.adapters.lldb = {
    type = "executable",
    command = "/usr/bin/lldb-dap-18",
    name = "lldb"
}

-- Configurations
dap.configurations.rust = {
    {
        type = "lldb",
        name = "Debug executable",
        request = "launch",
        program = function()
            vim.fn.system("cargo build")
            return require("rust").get_target_path()
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {}
    }
}

-- TODO get this to work
-- require("dap.ext.vscode").load_launchjs(nil, { lldb = { "rust" } })
