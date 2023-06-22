local function range(n)
    r = {}
    for i=1,n do
        table.insert(r,i)
    end
    return r
end

local function id(x) return x end

local function sum(t,f)
    s = 0
    for i=1,#t do
        s = s + f(i)
    end
    return s
end

local function square(n)
    return n * n
end

local function square_of_sum(n)
    return square(sum(range(n),id))
end

local function sum_of_squares(n)
    return sum(range(n),square)
end

local function difference_of_squares(n)
    return square_of_sum(n) - sum_of_squares(n)
end

return {
  square_of_sum = square_of_sum,
  sum_of_squares = sum_of_squares,
  difference_of_squares = difference_of_squares
}

