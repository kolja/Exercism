
function is_triangle(sides)
    s = sum(sides)
    m = max(sides...)
    s != 0 && s - m > m
end

function is_equilateral(sides)
    is_triangle(sides) && all(side -> side == first(sides), sides)
end

function is_isosceles(sides)
    is_triangle(sides) && length(unique(sides)) <= 2
end

function is_scalene(sides)
    is_triangle(sides) && length(unique(sides)) == 3
end
