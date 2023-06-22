
function getScore(letter)

    scores = [("AEIOULNRST" , 1)
              ("DG"         , 2)
              ("BCMP"       , 3)
              ("FHVWY"      , 4)
              ("K"          , 5)
              ("JX"         , 8)
              ("QZ"         , 10)]

    filter(t -> contains(t[1], uppercase(letter)), scores)[1][2]
end

function score(str)
    chrs = collect(replace(str, r"[^A-z]"=>s""))
    scre = map(getScore, chrs)
    sum(scre)
end
