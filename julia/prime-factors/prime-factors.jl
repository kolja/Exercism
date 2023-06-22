
# using Primes
# prime_factors = x -> factor(Array, x)

function prime_factors(num)

    if num == 1 return [] end

    limit=num÷2
    divider=2 
    factors=[]

    while divider <= limit
        if num % divider == 0
            num /= divider 
            push!(factors, divider)
        else
            divider += divider == 2 ? 1 : 2
        end
    end

    return isempty(factors) ? [num] : factors

end

