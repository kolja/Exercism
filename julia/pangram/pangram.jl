function ispangram(input)

    clean  = replace(input, r"[\W\d_]"=>s"")
    ulc    = unique ∘ lowercase

    # the sum of those numbers must be 2847 for it to be a pangram
    sum(Int.(ulc(clean))) == 2847

end
