return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "theHamsta/nvim-dap-virtual-text",
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "nvim-telescope/telescope-dap.nvim",
        "mfussenegger/nvim-dap-python",
    },
    config = function()
        require("plugins.dap")
    end,
}
