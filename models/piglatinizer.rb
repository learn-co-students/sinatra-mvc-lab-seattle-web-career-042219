class Piglatinizer
  attr_accessor :user_input

  def initialize(string)
    @user_input = string
  end

  def convert
    converted = word_array.map do |word|
    convert_word(word)
    end
    converted.join(' ')
  end

  def word_array
    @user_input.split(' ')
  end

  def convert_word(word)
    letter_array = (word.scan /\w/)
    first = letter_array[1..-1].join
    last = "#{letter_array[0]}ay"
    first + last
  end
end
