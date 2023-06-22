
function isAnagramOf(a)
    function (b)
        normalized = lowercase.([a, b])
        reduce(!=, normalized) && reduce(==, sort.(collect.(normalized)))
    end
end

function detect_anagrams(subject, candidates)
    filter(isAnagramOf(subject), candidates)
end

