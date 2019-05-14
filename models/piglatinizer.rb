class PigLatinizer

  def vowel?(char)
    if char.downcase == 'a' || char.downcase == 'e' || char.downcase == 'i' || char.downcase == 'o' || char.downcase == 'u'
      return true
    else
      return false
    end
  end

  def piglatinize(phrase)
    phrase.split(" ").map {|word| pl_convert(word)}.join(" ")
  end

  def pl_convert(word)
    if vowel?(word[0])
        return "#{word}way"
    else
      con_string = word[0]
      i = 1
      loop do
        if vowel?(word[i]) == false
          con_string << word[i]
          i += 1
        else
          break
        end
      end
      "#{word[con_string.length..-1] + con_string + "ay"}"
    end

  end
end
