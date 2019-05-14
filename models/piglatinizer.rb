class PigLatinizer

    attr_accessor :user_input

    def piglatinize(user_input)
        split_ar = user_input.split(" ")
        # split_ar.each do |word|
        #     first_vowel = word.split("").downcase.find_index do |letter|
        #         letter == "a"  ||  letter == "e" ||  letter == "i"  ||  letter == "o" ||  letter == "u"
        #     end
        #     binding.pry
        # end
        split_ar.join(" ")
    end

end