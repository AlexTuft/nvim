return {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {
        highlighters = {
            hsl_color = {
               pattern = "hsl%(%d+, %d%.%d+, %d%.%d+%)",
                group = function(_, match)
                    -- -- Stolen from craftzdog
                    local utils = require("theme.utils")
                    --- @type string, string, string
                    local nh, ns, nl = match:match("hsl%((%d+),%s*([0-1]?%.[0-9]+),%s*([0-1]?%.[0-9]+)%)")
                    --- @type number?, number?, number?
                    local h, s, l = tonumber(nh), tonumber(ns), tonumber(nl)
                    --- @type string
                    local hex_color = utils.hsl(h, s, l)
                    print(hex_color)
                    return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
                end,
            },
        },
    },
}
