class PigLatinizer

  def piglatinize(text)
    sentence = []
    text.split(' ').each { |word|
      first_vowel_index = word.index(word.split('').find { |x| x.downcase == "a" || x.downcase == "e" || x.downcase == "i" || x.downcase == "o" || x.downcase == "u" })
      if first_vowel_index == 0
        sentence << "#{word}way"
      else
        sentence << "#{word[first_vowel_index..-1] + word[0..first_vowel_index-1]}ay"
      end
    }

    sentence.join(' ')
  end
end
