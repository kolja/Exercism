
function encode(s)
    parts = collect(eachmatch(r"(.)\1*", s))

    join(map(parts) do m
             mm = m.match
             l = length(mm) 
             l == 1 ? mm : string(l,m.captures[1])
         end)
end

function decode(s)
    parts = collect(eachmatch(r"(\d*)([^\d])", s))

    join(map(parts) do m
             count = m[1] == "" ? 1 : parse(Int, m[1])
             repeat(m[2], count)
         end)
end
