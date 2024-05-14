local M = {}

function M.hsl(h, s, l)
    if s == 0 then
        local rgb = math.floor(l * 255)
        return M.rgb_to_hex(rgb, rgb, rgb)
    end

    local c = (1 - math.abs(2 * l - 1)) * s
    local H = h / 60
    local x = c * (1 - math.abs(H % 2 - 1))
    local m = l - (c / 2)

    local r = 0
    local g = 0
    local b = 0

    if 0 <= H and H < 1 then
        r = c
        g = x
        b = 0
    elseif 1 <= H and H < 2 then
        r = x
        g = c
        b = 0
    elseif 2 <= H and H < 3 then
        r = 0
        g = c
        b = x
    elseif 3 <= H and H < 4 then
        r = 0
        g = x
        b = c
    elseif 4 <= H and H < 5 then
        r = x
        g = 0
        b = c
    elseif 5 <= H and H <= 6 then
        r = c
        g = 0
        b = x
    end

    r = math.floor((r + m) * 255)
    g = math.floor((g + m) * 255)
    b = math.floor((b + m) * 255)

    return M.rgb_to_hex(r, g, b)
end

function M.rgb_to_hex(r, g, b)
    return "#" .. string.format("%02x", r) .. string.format("%02x", g) .. string.format("%02x", b)
end

return M
