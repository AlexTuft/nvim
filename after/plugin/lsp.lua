local api = vim.api
local lsp = vim.lsp

api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.hoverProvider then
            vim.keymap.set("n", "K", lsp.buf.hover, { buffer = args.bug })
        end
    end
})


-- lua
require("lspconfig").lua_ls.setup {}
