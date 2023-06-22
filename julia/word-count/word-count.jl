function wordcount(sentence)

    notEmpty = x -> x != ""

    words = filter(notEmpty, map(split(sentence, r"[^\'\w]+")) do word
        lowercase(replace(word, r"^\'*([\w\']*?)[\']*$"=>s"\1"))
    end)

    Dict(map(unique(words)) do word
         (word, count(==(word), words))
    end)
end
