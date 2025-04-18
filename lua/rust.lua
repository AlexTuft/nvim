require("utils")

local M = {}

function M.get_rust_toolchain()
    local toolchain = vim.fn.system("rustup show active-toolchain")

    local space_index = string.find(toolchain, " ")
    if space_index ~= nil then
        toolchain = toolchain:sub(1, space_index - 1)
    end

    return toolchain
end

function M.get_target_path()
    local meta = vim.fn.system("cargo metadata --format-version 1 --no-deps")
    meta = vim.fn.json_decode(meta)

    local targets = {}
    for _, module in ipairs(meta.packages) do
        for _, target in ipairs(module.targets) do
            if table.contains_value(target.kind, "bin") then
                table.insert(targets, target.name)
            end
        end
    end

    if #targets == 0 then
        return nil
    end

    local module = targets[1]
    if #targets > 1 then
        print("Select target:")
        for i, m in ipairs(targets) do
            print(i .. ". " .. m)
        end
        local selected = tonumber(vim.fn.input("> "))
        module = targets[selected]
    end

    return meta.target_directory .. "/debug/" .. module
end

return M
