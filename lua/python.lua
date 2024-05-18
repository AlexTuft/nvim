local M = {}

function M.get_install_path()
    if jit.os == "Linux" then
        return vim.fn.system("which python")
    end
end

return M
