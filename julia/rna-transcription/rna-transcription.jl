function to_rna(dna)

    if !contains(dna, r"^[CGTA]*$") throw(ErrorException("Input not valid")) end

    t = Dict('C'=>'G', 
             'G'=>'C', 
             'T'=>'A', 
             'A'=>'U')

    join(map(b -> t[b], dna))
end

