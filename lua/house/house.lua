local house = {}
local data = {
    {"lay in", "the house that Jack built."},
    {"ate", "the malt"},
    {"killed", "the rat"},
    {"worried", "the cat"},
    {"tossed", "the dog"},
    {"milked", "the cow with the crumpled horn"},
    {"kissed", "the maiden all forlorn"},
    {"married", "the man all tattered and torn"},
    {"woke", "the priest all shaven and shorn"},
    {"kept", "the rooster that crowed in the morn"},
    {"belonged to", "the farmer sowing his corn"},
    {"", "the horse and the hound and the horn"}
}

house.verse = function(which)
    local verse = {}
    for i = which, 1, -1 do
        table.insert(verse,
        i==which
        and "This is ".. data[i][2]
        or "that ".. data[i][1] .. " " .. data[i][2])
    end
    return table.concat(verse, "\n")
end

house.recite = function()
    local song = {}
    for i = 1, #data do
        table.insert(song, house.verse(i))
    end
    return table.concat(song, "\n")
end

return house


