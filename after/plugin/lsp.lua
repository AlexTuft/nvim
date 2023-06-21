local api = vim.api
local lsp = vim.lsp

function show_error()
    function rpad(str, len, c)
        local i = str:len()
        while i < len do
            str = str .. c
            i = i + 1 -- can't get length of string when using multi-byte chars (yay lua 5.1)
        end
        return str
    end

    local buf, win = vim.diagnostic.open_float(nil, { focus = false })
    if (buf ~= nil) then
        local content = vim.api.nvim_buf_get_lines(buf, 0, vim.api.nvim_buf_line_count(buf), false)

        local win_width = vim.api.nvim_win_get_width(win)
        local win_height = vim.api.nvim_win_get_height(win)
        for i, line in ipairs(content) do
           content[i] = "│ " .. rpad(line, win_width, " ") .. " │"
        end

        local top = "╭" .. rpad("", win_width + 2, "─") .. "╮"
        local bottom = "╰" .. rpad("", win_width + 2, "─") .. "╯"

        table.insert(content, 1, top)
        table.insert(content, #content + 1, bottom)

        vim.api.nvim_win_set_width(win, win_width + 4)
        vim.api.nvim_win_set_height(win, win_height + 2)
        vim.api.nvim_buf_set_option(buf, "modifiable", true)
        vim.api.nvim_buf_set_lines(buf, 0, #content, false, content)
        vim.api.nvim_buf_set_option(buf, "modifiable", false)
    end
end

api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.hoverProvider then
            vim.keymap.set("n", "K", lsp.buf.hover, { buffer = args.bug })
        end

        vim.o.updatetime = 250
        vim.cmd([[autocmd! CursorHold,CursorHoldI * lua show_error()]])
    end
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({
            capabilities = capabilities
        })
    end
})

-- lua
require("lspconfig").lua_ls.setup({
})
