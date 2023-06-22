
function rotate(n, c::Char)
    rotateChar = o -> Char(o + (((Int(c) - o + n)) % 26)) 
    if c ⊆ 'a':'z' return rotateChar(Int('a')) end
    if c ⊆ 'A':'Z' return rotateChar(Int('A')) end
    return c
end

rotate(n, str::String) = String(join(map(c -> rotate(n, c), str)))

