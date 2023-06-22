
function bob(stimulus)

    isQuestion = s -> occursin(r"\?\s*$", s)
    isYelling =  s -> occursin(r"[A-z]", s) && uppercase(s) == s
    isSilence =  s -> occursin(r"^\s*$", s)

    response = Dict(
        :question          => "Sure.",
        :yelling           => "Whoa, chill out!",
        :silence           => "Fine. Be that way!",
        :misc              => "Whatever.",
        :forceful_question => "Calm down, I know what I'm doing!"
    )

    if isSilence(stimulus) return response[:silence] end

    key = if isYelling(stimulus)
            isQuestion(stimulus) ? :forceful_question : :yelling
          else
            isQuestion(stimulus) ? :question : :misc
          end
    
    return response[key] 
end
