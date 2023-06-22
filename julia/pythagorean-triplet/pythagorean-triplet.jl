using Primes
using Combinatorics

function pyt(x)
    isInt = num -> round(num) == num
    triplets = []
    n = 0
    while true
        n += 1
        m = (sqrt(n^2 + 4(x/2)) - n) / 2
        triplet = [m^2 - n^2, 2 * m * n, m^2 + n^2] # thanks, Euclid
        if triplet[1] <= 0 break end
        if sum(triplet) == x && all(isInt, triplet) 
            push!(triplets, Int.(triplet)) 
        end
    end
    return triplets
end

function pythagorean_triplets(n)

    mul = t -> *(t...)

    # all unique factors (prime or otherwise) of the number that was passed in
    ftrs = unique(map(mul, combinations(factor(Array,n))))
    push!(ftrs, 1) # including: n/1 = n 

    # find triplets for every n/<factor-of-n>
    Tuple.(sort(unique(sort.(
                  filter(!isempty, 
                         reduce(vcat, 
                             map(fct -> 
                               map(t -> t * fct, pyt(n/fct)), 
                               ftrs)))))))
end
