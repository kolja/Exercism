

function clean(phone_number)

    normal  = replace(phone_number, r"[^\d]"=>s"")
    valid   = occursin(r"^1?([2-9]\d{2}){2}\d{4}$", normal)
    dropOne = replace(normal, r"^1?"=>s"") 

    if valid dropOne end

end
