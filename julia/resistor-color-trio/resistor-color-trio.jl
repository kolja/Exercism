function label(colors)

    col = [:black, :brown, :red, :orange, :yellow, 
           :green, :blue, :violet, :grey, :white]

    b1, b2, b3 = Symbol.(colors)

    index = key -> findfirst(==(key), col) - 1
    value = (index(b1) * 10 + index(b2)) * 10^index(b3)

    if value % 1000 != 0  
        string(value, " ohms")
    else
        string(value ÷ 1000, " kiloohms")
    end
end
