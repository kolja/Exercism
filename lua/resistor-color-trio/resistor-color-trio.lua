return {
    decode = function(c1, c2, c3)

        local colors = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

        local function r(color)
            for k,v in pairs(colors) do
              if v == color then return k-1 end
            end
        end

        local value = (r(c1) * 10 + r(c2)) * 10 ^ r(c3)

        if value < 1000 then
            return value, "ohms"
        else
            return value // 1000, "kiloohms"
        end
    end
}
