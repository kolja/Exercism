
function distance(a, b)
    reduce(!=, length.([a,b])) ? 
        throw(ArgumentError("strings must be of equal length")) :
        sum(map(!=, a, b))
end
