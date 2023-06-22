
function is_leap_year(year)
    leap = x -> year % x == 0
    return leap(400) || (!leap(100) && leap(4))
end


