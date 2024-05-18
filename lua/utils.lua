function table.contains_value(self, value)
    for _, v in ipairs(self) do
        if v == value then
            return true
        end
    end
    return false
end
