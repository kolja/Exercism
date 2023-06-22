function acronym(phrase)
    join((uppercase∘first).(split(phrase, r"[\s_-]+")))
end
