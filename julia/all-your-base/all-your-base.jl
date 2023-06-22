
function all_your_base(digits, base_in, base_out)

    if any(<=(1), [base_in, base_out]) throw(DomainError("Bases must be > 1")) end
    if any(x -> !(0 <= x < base_in), digits) throw(DomainError("Number out of Range")) end

    if isempty(digits) || all(iszero, digits) return [0] end

    fn = (acc, t) -> acc + t[2] * base_in^(t[1] - 1)
    value = foldl(fn, enumerate(reverse(digits)); init=0)

    digits = n -> x -> (n - (n ÷ base_out^(x+1)) * base_out^(x+1) - n % base_out^x) ÷ base_out^x
    places = floor(Int, log(base_out, value))

    reverse(map(digits(value), 0:places))
end

