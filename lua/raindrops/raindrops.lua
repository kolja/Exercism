return function(n)
    local result = ""
    local ppp = {
        {"Pling", 3},
        {"Plang", 5},
        {"Plong", 7}
    }
    for i,pair in ipairs(ppp) do
        local sound, div = pair[1], pair[2]
        if n%div == 0 then
            result = result .. sound
        end
    end
    return (#result>0 and result or tostring(n))
end
