local tmux_directions = {
    ["h"] = "L",
    ["j"] = "D",
    ["k"] = "U",
    ["l"] = "R",
}

function is_tmux()
    return vim.env.TMUX ~= nil
end

local function tmux_vim_change_window(direction)
    local prev_window = vim.fn.win_getid()
    vim.cmd.wincmd(direction)
    local cur_window = vim.fn.win_getid()
    if prev_window == cur_window then
        vim.fn.system("tmux select-pane -" .. tmux_directions[direction])
    end
end

function setup_vim_tmux_navigation()
    vim.keymap.set("n", "<C-H>", function() tmux_vim_change_window("h") end)
    vim.keymap.set("n", "<C-J>", function() tmux_vim_change_window("j") end)
    vim.keymap.set("n", "<C-K>", function() tmux_vim_change_window("k") end)
    vim.keymap.set("n", "<C-L>", function() tmux_vim_change_window("l") end)
    vim.keymap.set("n", "<C-LEFT>", function() tmux_vim_change_window("h") end)
    vim.keymap.set("n", "<C-DOWN>", function() tmux_vim_change_window("j") end)
    vim.keymap.set("n", "<C-UP>", function() tmux_vim_change_window("k") end)
    vim.keymap.set("n", "<C-RIGHT>", function() tmux_vim_change_window("l") end)
end

if is_tmux() then
    setup_vim_tmux_navigation()
else
    vim.keymap.set("n", "<M-H>", "<C-W>h")
    vim.keymap.set("n", "<M-J>", "<C-W>j")
    vim.keymap.set("n", "<M-K>", "<C-W>k")
    vim.keymap.set("n", "<M-L>", "<C-W>l")
    vim.keymap.set("n", "<M-UP>", "<C-W><UP>")
    vim.keymap.set("n", "<M-DOWN>", "<C-W><DOWN>")
    vim.keymap.set("n", "<M-LEFT>", "<C-W><LEFT>")
    vim.keymap.set("n", "<M-RIGHT>", "<C-W><RIGHT>")
end
