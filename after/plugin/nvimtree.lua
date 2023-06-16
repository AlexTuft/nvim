local height_ratio = 0.8
local width_ratio = 0.5

require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    sort_by = "case_sensetive",
    hijack_directories = {
        auto_open = false
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
    view = {
        float = {
            enable = true,
            open_win_config = function ()
                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_w = screen_w * width_ratio
                local window_h = screen_h * height_ratio
                local center_x = (screen_w - window_w) / 2
                local center_y = (vim.opt.lines:get() - window_h) / 2 - vim.opt.cmdheight:get()

                return {
                    border = "rounded",
                    relative = "editor",
                    row = center_y,
                    col = center_x,
                    width = math.floor(window_w),
                    height = math.floor(window_h)
                }
            end
        },
        width = function()
            return math.floor(vim.opt.columns:get() * width_ratio)
        end
    },
    filters = {
        dotfiles = true
    }
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle) -- Open file tree
