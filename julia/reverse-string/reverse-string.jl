using Unicode
const TEST_GRAPHEMES = true

function myreverse(str)
    join(reverse(collect(graphemes(str))))
end
