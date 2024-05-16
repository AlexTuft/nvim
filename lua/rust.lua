local M = {}

function M.get_rust_toolchain()
    local toolchain = vim.fn.system("rustup default")

    local space_index = string.find(toolchain, " ")
    if space_index ~= nil then
        toolchain = toolchain:sub(1, space_index - 1)
    end

    return toolchain
end

return M
