
class PigLatinizer
  attr_accessor :phrase


  def piglatinize(phrase)
    temp = []
    @phrase = phrase
    phrase_arr = @phrase.split(" ")
    final = phrase_arr.map do |word|
      word_arr = word.split("")
      temp = word
      target = word_arr.find {|letter| letter.downcase == 'a' || letter.downcase == 'e' || letter.downcase == 'i' || letter.downcase == 'o' || letter.downcase == 'u'}
      index = word.index(target)
        #if letter.downcase == 'a' || letter.downcase == 'e' || letter.downcase == 'i' || letter.downcase == 'o' || letter.downcase == 'u' && break_point == false
          #index = word.index(letter)
          #temp.push('w')
          #break_point = true
        #end
      #end
      if index == 0
        temp += 'w'
      else
        temp += temp.slice!(0..index-1)
      end
      #if word_arr[0].downcase == 'a' || word_arr[0].downcase == 'e' || word_arr[0].downcase == 'i' || word_arr[0].downcase == 'o' || word_arr[0].downcase == 'u'
        #temp.push('w')
      #end
      #temp.push('w') if
      temp += 'ay'
      temp
    end
    final.join(' ')
  end

end
