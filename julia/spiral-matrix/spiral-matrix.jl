
function walk(m, n, x) # m = matrix, n = dimension, x = last Number inserted

    index = mm -> findfirst(==(x), mm)
    next  = idx -> CartesianIndex(idx[1], idx[2]+1)

    idx = index(m)
    if idx[2] == n || m[next(idx)] != 0
        m = rotl90(m)
        idx = index(m)
    end

    m[next(idx)] = x + 1
    return m
end

function spiral_matrix(n)

    if n == 0 return zeros(Int, 0,0) end
    if n == 1 return reshape([1],(1,1)) end

    m = zeros(Int, n, n)
    m[1] = 1

    collect(m = walk(m, n, x) for x in 1:n^2-1)

    while m[1] != 1 m = rotl90(m) end
    return m
end
