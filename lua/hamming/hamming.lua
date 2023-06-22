local Hamming = {}

function Hamming.compute(a,b)
    if #a~=#b then return -1 end
    local dist = 0
    for i=1,#a do
        dist = dist + (a:byte(i)==b:byte(i) and 0 or 1)
    end
    return dist
end

return Hamming
