class PigLatinizer

    attr_accessor :user_input

    def piglatinize(user_input)
        split_ar = user_input.split(" ")
        pig_latinized_ar = []
        split_ar.each do |word|
            new_word=[]
            first_vowel_index = word.split("").find_index do |letter|
                letter.downcase == "a"  ||  letter.downcase == "e" ||  letter.downcase == "i"  ||  letter.downcase == "o" ||  letter.downcase == "u"
            end
            if first_vowel_index == 0
                new_word = word + "way"
            else
                new_word = word.slice(first_vowel_index..-1)+word.slice(0..first_vowel_index-1)+"ay"
            end
            pig_latinized_ar << new_word
        end
        pig_latinized_ar.join(" ")
    end

end