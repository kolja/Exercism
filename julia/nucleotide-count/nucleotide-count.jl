function count_nucleotides(strand)
    if !occursin(r"^[AGCT]*$", strand) throw( DomainError("only A, C, G or T are allowed") ) end

    Dict( zip(['A', 'C', 'G', 'T'], 
          map( length, match( r"(A*)(C*)(G*)(T*)", 
                              join(sort(collect(strand)))).captures)))
end
