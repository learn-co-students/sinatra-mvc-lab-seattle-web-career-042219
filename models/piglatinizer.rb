class PigLatinizer

  def piglatinize(string)
    string.split(" ").length == 1 ? piglatinize_word(string) : piglatinize_sentence(string)
  end

  private

  def cons(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)

    if !cons(word[0])

      word = word + "w"

    elsif cons(word[0]) && cons(word[1]) && cons(word[2])

      word = word.slice(3..-1) + word.slice(0,3)

    elsif cons(word[0]) && cons(word[1])

      word = word.slice(2..-1) + word.slice(0,2)

    else

      word = word.slice(1..-1) + word.slice(0)

    end

    word << "ay"
  end


  def piglatinize_sentence(sentence)
    
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end




end