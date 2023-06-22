local function decode(bytes)

    local t={}
    local exp = 0

    for i=#bytes,1,-1  do
        if (bytes[i]-0x80<0) then
            exp = 0
            table.insert(t,1,bytes[i])
        else
            exp = exp + 1
            if not pcall(function()
                t[1] = t[1] + (bytes[i]-0x80) * 0x80^exp
            end) then
                error('incomplete byte sequence') 
            end
        end
    end

    return t
end

local function encode(values)

    local ret = {}

    local function conj(t, ...)
        local ret = {table.unpack(t)}
        for _,v in ipairs(...) do
            table.insert(ret, math.floor(v))
        end
        return ret
    end

    local function chunks(n, acc)
        if n == 0 then return acc or {0} end
        local acc = acc or {}
        local flag = #acc>0 and 0x80 or 0
        table.insert(acc,1,n%0x80+flag)
        return chunks( n//0x80, acc)
    end

    for i,n in ipairs(values) do
        ret = conj(ret, chunks(n))
    end

    return ret
end

return { decode = decode, encode = encode }
