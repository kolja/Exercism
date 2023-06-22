
function transform(input::AbstractDict)
    scores = [[lowercase(letter) => score for letter in input[score]] for score in keys(input)]
    Dict(vcat(scores...))
end

