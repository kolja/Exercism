
function dart(distance::Number) 
    (ring::Number) -> distance <= ring
end

function score(x, y)

    hit = dart(sqrt(x^2 + y^2))

    return hit(1)  ? 10 :
           hit(5)  ? 5  :
           hit(10) ? 1  : 0
end
