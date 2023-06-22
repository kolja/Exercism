
function matching_brackets(s)
    nb = "[^{\\[\\(\\)\\]}]" # character that is not a bracket
    rx = Regex("{(?:$nb|(?R))*}|\\[(?:$nb|(?R))*\\]|\\((?:$nb|(?R))*\\)|$nb")
    isempty(replace(s, rx=>s""))
end

    
