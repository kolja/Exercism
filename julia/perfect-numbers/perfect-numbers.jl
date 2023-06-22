

factors = n -> reduce((acc,x) -> n%x==0 ? [acc...,x] : acc, 1:ceil(n/2); init=[])

function aliquot(n)
    if n<=0 throw(DomainError("invalid input")) end
    n == 1 ? 0 : sum(factors(n))
end

isperfect   = n -> aliquot(n) == n
isabundant  = n -> aliquot(n) > n
isdeficient = n -> aliquot(n) < n
